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

### 🗂 Populating your component library

1. Sign in to your Ditto account
2. Navigate to [your component library](https://app.dittowords.com/components/all)
3. Enable [Developer Mode](https://www.dittowords.com/docs/ditto-developer-mode) for your component library if it isn't enabled already
4. In the top-right corner, click **New Component** -> **Import from JSON**
5. Upload [ditto-component-library\_\_base.json](ditto/ditto-component-library__base.json) and follow the prompts to finalize the import
6. Repeat the import process with [ditto-component-library\_\_spanish.json](ditto/ditto-component-library__spanish.json); **when prompted for a variant name, make sure to name your variant "Spanish"**

### 🖋 Making an example edit

1. Sign in to your Ditto account
2. Navigate to your [component library](https://app.dittowords.com/components/all)
3. In the search input near the top of the screen, search for the text "Travel the world with your family"
4. Select the component and, using the detail panel on the right side of the screen, change the text to "Go anywhere" and click **Save Edits**.
5. Select the export project button near the top right of the screen.
6. In the modal that shows up, select **iOS (.strings)** under the File format drop down.
7. By default the base variant will be selected. Click the export button at the bottom and you should have a Base.strings file downloaded.
8. Move that file into the `Dittobnb/Resources/en.lproj` folder and make sure to name it `Localizable.strings`.
9. Repeat steps 5-8 but select `Spanish` in the variant drop down and place the file at `Dittobnb/Resources/es.lproj/Localizable.strings`.

Rebuild the project, and you should see the app reflect the change made in Ditto!

### 🖼 Syncing edits from designs (optional)

To sync edits from design all the way to development, you can integrate your Ditto components with a design file. That way, you can also test out sample edits directly from your design file!

1. Duplicate our corresponding [Dittobnb Figma file](https://www.figma.com/community/file/956627227087012313)
2. Import the file as a new Ditto project via our [Figma plugin](https://www.figma.com/community/plugin/798826066406007173/%E2%9C%8D%EF%B8%8F-Ditto-%7C-collaborate-on-copy).
3. Connect your component library to your Ditto project. You can do this quickly via our [Component Suggestions](https://www.dittowords.com/blog/introducing-component-suggestions)!
4. Make an edit to text via our Figma plugin.
5. Follow steps 5-9 under [Making an Example Edit](https://github.com/dittowords/ditto-ios-demo/edit/main/README.md#-making-an-example-edit) and you should see the edits made in Ditto!

## Expanding

Is there another library/framework that you think we should create a demo for? Let us know by [opening an issue](https://github.com/dittowords/ditto-ios-demo/issues/new), or feel free to open a pull request!
