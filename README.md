# Dittobnb

Dittbnb is a small iOS app designed to serve as an example of how Ditto's exported .strings files can be integrated into an iOS app. While Ditto supports many different ways to use variants, this project demonstrates how to use variants to aide in localizing a mobile application.

![Screen Shot 2022-06-24 at 2 35 44 PM](https://user-images.githubusercontent.com/19922122/175696064-a6d5fed4-7bb5-41bf-9c16-18247927a1d9.png)

### 🛠 Initial setup
This project was tested using Xcode 13.

1. Clone the repository
2. Open Dittobnb.xcodeproj
3. Hit the run button to boot Dittobnb onto your simulator!

The project is setup to use the system language on the machine it's running on. To force a specific language do the following steps:
1. Select the Target selection drop down at the top of xcode and select edit schema.
![Screen Shot 2022-06-24 at 2 20 03 PM](https://user-images.githubusercontent.com/19922122/175680740-f8381319-e57c-4ee1-b6fe-2441c8611330.png)
2. Select the Run side menu item then select the options tab. Scroll down until you see the App Language input.
![Screen Shot 2022-06-24 at 2 21 20 PM](https://user-images.githubusercontent.com/19922122/175683867-007d2890-63cf-401f-86cf-cb388e02fcf8.png)
3. Under the App Language input, select the language you would like to run the app in. Supported languages using the provided string variants should show up at the top.
![Screen Shot 2022-06-24 at 2 24 00 PM](https://user-images.githubusercontent.com/19922122/175690354-b495af41-417f-4bbf-8e6a-2dd8a50e075d.png)
4. After selecting your language, close the popup and run the app again. Tada! Your app is now using the localized strings.

## Expanding

Is there another library/framework that you think we should create a demo for? Let us know by [opening an issue](https://github.com/dittowords/ditto-ios-demo/issues/new), or feel free to open a pull request!
