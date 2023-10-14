# AvatarGAN ✨

_Generate Cartoon Images using [DC-GAN](https://arxiv.org/abs/1511.06434)_

Deep Convolutional GAN is a generative adversarial network architecture. It uses a couple of guidelines, in particular:

- Replacing any pooling layers with strided convolutions (discriminator) and fractional-strided convolutions (generator).
- Using batchnorm in both the generator and the discriminator.
- Removing fully connected hidden layers for deeper architectures.
- Using ReLU activation in generator for all layers except for the output, which uses tanh.
- Using LeakyReLU activation in the discriminator for all layer.

Checkout the detailed explanation of AvatarGAN in the article [AvatarGAN](https://aakashjhawar.medium.com/avatargan-generate-cartoon-images-using-gan-1ffe7d33cfbb)

![DCGAN](https://github.com/aakashjhawar/AvatarGAN/blob/master/assets/images/DCGAN.png)

### GAN Model

1. Define Generator and Discriminator network architecture
2. Train the Generator model to generate the fake data that can fool Discriminator
3. Train the Discriminator model to distinguish real vs fake data
4. Continue the training for several epochs and save the Generator model

![Model](https://github.com/aakashjhawar/AvatarGAN/blob/master/assets/images/GAN-architecture.png)

### Dataset Setup

[Cartoon Set](https://google.github.io/cartoonset/) which is a collection of random 2D cartoon avatar images.
Download the dataset using the shell script.

```
sh download-dataset.sh
```

This will download the dataset in `data/` directory.
If you want to train the model in Google Colab, upload the dataset folder to Google Drive. The destination path should be `projects/cartoons/`.

### Model Training

Check out the model being trained to generate cartoon images.
![Training](https://github.com/aakashjhawar/AvatarGAN/blob/master/assets/images/GAN-training.gif)

### Model Prediction

![Model](https://github.com/aakashjhawar/AvatarGAN/blob/master/assets/images/GAN-output.png)
