# HM代码

```cpp
//Pic->Slice->CU

class TComSlice{
  TComPic* m_pcPic;
  UInt m_sliceCurStartCtuTsAddr;
};

class TComPic{
  TComPicYuv* m_apcPicYuv[3];
  TComPicSym m_picSym;
};

class TComPicSym{
  TComDataCU** m_pictureCtuArray;
  std::deque<TComSlice*> m_apSlices;
};

class TComPicYuv{
  Pel* m_piPicOrg[3];
  Void dump(string filename, Bitdepth bitdepth);
};//存储PicYuv, 算地址, copy, dump

class TComDataCU{
  TComPic* m_pcPic;
  TComPic* m_pcSlice;
  Void copyToPic(UChar uiDepth);

  UInt          m_ctuRsAddr;                            ///< CTU (also known as LCU) address in a slice (Raster-scan address, as opposed to tile-scan/encoding order).
  UInt          m_absZIdxInCtu;                         ///< absolute address in a CTU. It's Z scan order
  UInt          m_uiCUPelX;                             ///< CU position in a pixel (X)
  UInt          m_uiCUPelY;                             ///< CU position in a pixel (Y)
  UChar*        m_puhWidth;                             ///< array of widths
  UChar*        m_puhHeight;                            ///< array of heights
  UChar*        m_puhDepth;                             ///< array of depths
};

class TComTU{
  UInt mCuDepth; //<CU是TU的根节点，记录CU深度
  UInt mTrDepthRelCU[MAX_NUM_COMPONENT]; //<记录TU相对于CU的深度
  UInt mSection;//<如果进行劈分，那么劈分后处理SubCU的index
  TU_SPLIT_MODE mSplitMode;//< the split mode
  TComRectangle mRect[MAX_NUM_COMPONENT]; //<当前TU的位置信息 Bool mCodeAll[MAX_NUM_COMPONENT];
  UInt mOrigWidth[MAX_NUM_COMPONENT];
  UInt mOffsets[MAX_NUM_COMPONENT];//<cur TU 与 CU左上角的偏移量，比如TU 为8*8，那么处理第二个TU则偏移64个bit
  UInt mAbsPartIdxCU;//<the abs index of CU in LCU
  UInt mAbsPartIdxTURelCU;//<the abs index of TU in cur CU
  UInt mAbsPartIdxStep;//<if split, the added index
  TComDataCU *mpcCU;
  UInt mLog2TrLumaSize;//< relative to the size of Cur TU
  TComTU *mpParent; //<如果劈分进行递归，对应父节点
};
```

# Intra fast mode decision
1. SATD $\Rightarrow$ 8/3 + MPM[3]  $\Rightarrow$  8~11种mode
2. max Transform RD  $\Rightarrow$  1个mode
3. full RQT  $\Rightarrow$  对该mode进行划分

$4\times4$块Intra mode $\Rightarrow$ 仅应用在YUV420情况下的UV处理?

周围块为inter块时认为周围块not available

intra以TU为单位

# 目前很大的问题
如何编码/解码 $\Rightarrow$ 填充像素值128