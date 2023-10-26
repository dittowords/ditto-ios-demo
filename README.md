# Sample Repo Instructions Template

## DittoPay — iOS Demo App

DittoPay is a small iOS app that corresponds with the sample project in your workspace. With this sample app, you can set up our [developer integrations ](https://developer.dittowords.com) to sync text edits in just a few minutes**.**

We also use the sample app to showcase how you can use Ditto’s developer integrations in a iOS environment for:

- Handling plurals
- Translation/localization with Variants
- Componentization
- Variable interpolation

<img width="1840" alt="Screenshot 2023-10-26 at 9 44 10 AM" src="https://github.com/dittowords/ditto-ios-demo/assets/19922122/90c65f06-47b1-443c-960f-b335aecc8d72">

## 1. Running the App 🛠

To run the sample app locally:

1. Clone this repository
2. Open the DittoPay project in Xcode
3. Select a simulator from the top schema/simulator selection bar
4. Press the play button to run the app on the selected simulator

## 2. Setting up the Ditto CLI 🤖

This repo is already set up with the string files and string IDs of the sample project in your workspace, as well as a [config for the CLI](https://github.com/dittowords/ditto-react-demo/blob/master/src/ditto/config.yml) to sync text from the DittoPay sample components for iOS.

This means all you have to do is install and authenticate to the CLI to have things be hooked up from end-to-end:

1. **Install the CLI:** In the root of the repository, run `npm install`. This will install all dependencies recorded in the `package.json`[LINK] file, where the latest version of the Ditto CLI is listed.
2. **To authenticate, run the CLI:**

   `[insert the correct command]`

   In this project, we’ve set up a simple [NPM script](https://docs.npmjs.com/cli/v10/using-npm/scripts) to enable using the Ditto CLI from any subdirectory, which you can view in the `scripts` property of the [package.json](https://github.com/dittowords/ditto-ios-demo/blob/master/package.json) file.

   You can always run the CLI directly using `npx` (see [CLI docs](http://localhost:5555/cli-reference/authentication)), but this setup is reliable and is similar to one you might want in your own production environment.

   You’ll be prompted to provide your API key if it’s your first time running the CLI.

Note: you can view the CLI config at `/ditto/config.yml`:

```yaml
sources:
  components:
    folders:
      - id: sample-components
        name: Sample Components
variants: true
format:
  - ios-strings
  - ios-stringsdict
iosLocales:
  - base: en
  - pt: portuguese---br-sample
```

## 3. Syncing Ediats ✍️

1. Make edits to DittoPay text in [Ditto](https://app.dittowords.com/projects/sample). You can make edits to the components connected in the DittoPay sample project itself, or to the sample components directly!
2. Pull in the latest edits via the Ditto CLI:

   `npm run ditto:pull`

## Feature Requests and Support

Is there another library/framework that you think we should create a demo for?

Is there a Ditto feature you want an example for in iOS?

Please let us know by opening an [issue](https://github.com/dittowords/ditto-ios-demo/issues) or sending us an email!
