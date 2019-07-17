# A Neurobiological Evaluation Metric for Neural Network Model Search
Proposed a human-model similarity metric.

Networks with increased human-model similarity are correlated with better performance on two computer vision tasks: next frame prediction and object matching accuracy.

# Why ReLU networks yield high-confidence predictions far away from the training data and how to mitigate the problem
辨别器网络应该在输入不可信的时候给出较低的预测概率。文章证明了ReLU网络本身达不到这个目标。文章还提出了一个处理这种问题的方法。

# CollaGAN: Collaborative GAN for Missing Image Data Imputation
多输入网络当输入数量少于预设情况时输出有很大偏差。文章提出了一种输出减少时图像插补措施CollaGAN。CollaGAN使用clean dataset来预测丢失数据。

# Mode Seeking Generative Adversarial Networks for Diverse Image Synthesis 
[https://github.com/HelenMao/MSGAN](https://github.com/HelenMao/MSGAN)

conditional generation tasks期望在给定条件的情况下的输出具有多样性，但是cGANs并不在意隐变量z，这使得output variations有所增加。对于cGANs的mode collapse问题，作者提出了一个正则项$\frac{d_I(I_a,I_b)}{d_z(z_a,z_b)}$来提高输出网络的多样性。

# *Self-Supervised GANs via Auxiliary Rotation Loss*
比较迷，有关自监督学习。

# GANFIT: Generative Adversarial Network Fitting for High Fidelity 3D Face Reconstruction*
3D模型相关。GAN，DCNN。训练生成UV空间面部纹理的GAN，再使用3DMMs拟合手段，利用非线性优化方式找到最优的隐变量。生成结果的好坏under a new perspective。

使用可微分渲染器，cost使用已训练好的face reognition network，误差反向传播到隐变量。

关键: differentiable renderer

# Mixture Density Generative Adversarial Networks
解决mode collapsew问题。discriminator在embedding space形成clusters使D输出不单一。实验结果貌似没什么意思。

# Event-based High Dynamic Range Image and Very High Frame Rate Video Generation using Conditional Generative Adversarial Networks
event camera相关。根据其捕捉的动作来恢复intensity images。使用conditional GAN。

# Pluralistic Image Completion
生成多图。A generative path for which the conditional prior is coupled to the distribution obtained in the reconstructive path.

# Deep Flow-Guided Video Inpainting
视频相关。使用Deep Flow Completion network合成连续光流，再利用合成的光流填补缺失区域。

# *Learning Pyramid-Context Encoder Network for High-Quality Image Inpainting
[https://github.com/researchmm/PEN-Net-for-Inpainting](https://github.com/researchmm/PEN-Net-for-Inpainting)

UNet、pyramid-context encoder、mutiscale decoder、adversarial training loss。
- Cross-layer attention transfer.
- Pyramid filling.

# Deep Video Inpainting
视频恢复、RNN、临近帧信息、非GAN。

# StoryGAN: A Sequential Conditional GAN for Story Visualization
文字->幻灯片。图片不连续。

# *Multi-Channel Attention Selection GAN with Cascaded Semantic Guidance for Cross-View Image Translation
图像形变，保留图像原视语义。使用uncertainty maps learned from attentions来进行二次加工获得较好结果。

# Image Generation from Layout
文本layout->图像。Individual object
representations are composed together using convolutional LSTM, to obtain an encoding of the complete layout, and then decoded to an image.

# 早期研究成果
## GAN
[Goodfellow I. J., Pouget-Abadie J., Generative Adversarial Nets NIPS2014](https://papers.nips.cc/paper/5423-generative-adversarial-nets.pdf)
Input: random noise z
Loss: 对抗loss
Architecture: perceptron
问题:
1. 训练结果不稳定，常生成"诡异"图像
2. 生成目标不明确，可控性不强
3. G、D训练需要均衡。如果D的辨别能力特别强，则G不会学到任何东西。

## cGAN
[Mirza M. Conditional Generative Adversarial Nets NIPS2014](https://www.semanticscholar.org/paper/Conditional-Generative-Adversarial-Nets-Mirza-Osindero/ba753286b9e2f32c5d5a7df08571262e257d2e53)
Input: condition y + noise z
Loss: 对抗loss
问题:
1. 图像边缘模糊
2. 生成图像分辨率较低
3. 可训练性不强

贡献:
图像风格转换鼻祖(CycleGAN，StarGAN)

## DCGAN
[Radford A., Metz L. Unsupervised Representation Learning with Deep Convolution Generative Adversarial Networks](https://arxiv.org/pdf/1511.06434)
Input: random noise z
Loss: 对抗loss
问题:
生成结果不稳定

贡献:
1. 全卷积网络
2. 每层之后进行batch normalization保证梯度
3. 输入的连续性

## WGAN
[Arjovsky M., Chintala S., Bottou L. Wasserstein GAN](https://arxiv.org/pdf/1701.07875)
贡献:
1. KL(JS)散度不合理，generator梯度弥散
2. Generator Loss: EMD

对GAN的修正:
1. D去掉sigmoid层。 
2. D和G的损失函数不取对数。 
3. 不使用基于动量的优化算法，使用随机梯度下降算法更为可靠。 
4. D的参数更新后，将其截断到绝对值不超过某常数。 

## 风格转换GAN: CycleGAN & StarGAN
### CycleGAN: 一对一转换
Input: picture without noise
Loss:
1. 对抗loss
2. 一致性损失(cycle consistent loss)
3. Identity Mapping Loss

### StarGAN: 多属性转换
Input: Label
Loss:
1. 对抗loss
2. 域分类loss
3. 复原损失(类似一致性损失)

Mask Vector与跨数据集属性转换: 不同标签没有关联

## *pix2pix
Input: picture without noise
Loss: $\arg \min \max L_{cGAN}(G,D)+\lambda L_{L1}(G)$
Architecture: UNet, PatchGAN