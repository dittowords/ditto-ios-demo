//
// Ditto.swift  
//
// Created by the Ditto CLI on 10/25/2023, 10:01:26 AM
//

import SwiftUI

struct Ditto {
		static func getBundle(_ locale: String? = nil) -> Bundle {
		  var bundle: Bundle? = nil
		  if (locale != nil) {
		      let path = Bundle.main.path(forResource: locale, ofType: "lproj")
		      if (path != nil) {
		          bundle = Bundle(path: path!)
		      }
		  }
		  return bundle ?? Bundle.main
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e011)
	///
	/// - Returns: The localized string for the Ditto identifier "cards.label.card-number-sample"
	public static func cardsLabelCardNumberSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("cards.label.card-number-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e012)
	///
	/// - Returns: The localized string for the Ditto identifier "cards.label.expiration-sample"
	public static func cardsLabelExpirationSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("cards.label.expiration-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e021)
	///
	/// - Returns: The localized string for the Ditto identifier "input.birthday.helper-text-sample"
	public static func inputBirthdayHelperTextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.birthday.helper-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Disclaimer on age mininum to create an account."))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e007)
	///
	/// - Returns: The localized string for the Ditto identifier "input.birthday.label-sample"
	public static func inputBirthdayLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.birthday.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e008)
	///
	/// - Returns: The localized string for the Ditto identifier "input.birthday.placeholder-sample"
	public static func inputBirthdayPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.birthday.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e014)
	///
	/// - Returns: The localized string for the Ditto identifier "input.card-expiration.placeholder-sample"
	public static func inputCardExpirationPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.card-expiration.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e01b)
	///
	/// - Returns: The localized string for the Ditto identifier "input.confirm-identity.helper-text-sample"
	public static func inputConfirmIdentityHelperTextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.confirm-identity.helper-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to reassure user that we won't run a credit check using the SSN and address they provide us"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e00d)
	///
	/// - Returns: The localized string for the Ditto identifier "input.confirm-password.label-sample"
	public static func inputConfirmPasswordLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.confirm-password.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e00a)
	///
	/// - Returns: The localized string for the Ditto identifier "input.country-of-residence.label-sample"
	public static func inputCountryOfResidenceLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.country-of-residence.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e016)
	///
	/// - Returns: The localized string for the Ditto identifier "input.cvv.label-sample"
	public static func inputCvvLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.cvv.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e001)
	///
	/// - Returns: The localized string for the Ditto identifier "input.email.label-sample"
	public static func inputEmailLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.email.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e003)
	///
	/// - Returns: The localized string for the Ditto identifier "input.email.placeholder-sample"
	public static func inputEmailPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.email.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e01f)
	///
	/// - Returns: The localized string for the Ditto identifier "input.first-name.label-sample"
	public static func inputFirstNameLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.first-name.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e01a)
	///
	/// - Returns: The localized string for the Ditto identifier "input.last-4-ssn.label-sample"
	public static func inputLast4SsnLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.last-4-ssn.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e020)
	///
	/// - Returns: The localized string for the Ditto identifier "input.last-name.label-sample"
	public static func inputLastNameLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.last-name.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e026)
	///
	/// - Returns: The localized string for the Ditto identifier "input.middle-name.helper-text-sample"
	public static func inputMiddleNameHelperTextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.middle-name.helper-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to make sure user only enters their middle name if it's on their official ID"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e01e)
	///
	/// - Returns: The localized string for the Ditto identifier "input.middle-name.label-sample"
	public static func inputMiddleNameLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.middle-name.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e000)
	///
	/// - Returns: The localized string for the Ditto identifier "input.password.label-sample"
	public static func inputPasswordLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.password.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e009)
	///
	/// - Returns: The localized string for the Ditto identifier "input.phone-number.placeholder-sample"
	public static func inputPhoneNumberPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.phone-number.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e00b)
	///
	/// - Returns: The localized string for the Ditto identifier "input.select.placeholder-sample"
	public static func inputSelectPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.select.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e017)
	///
	/// - Returns: The localized string for the Ditto identifier "input.zip-code.label-sample"
	public static func inputZipCodeLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.zip-code.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e02b)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.account-details.header-sample"
	public static func onboardingAccountDetailsHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.account-details.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e02a)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.account-details.hint-text-sample"
	public static func onboardingAccountDetailsHintTextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.account-details.hint-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e019)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.confirm-identity.header-sample"
	public static func onboardingConfirmIdentityHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.confirm-identity.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e013)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.cta.back-sample"
	public static func onboardingCtaBackSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.cta.back-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e005)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.cta.forgot-password-sample"
	public static func onboardingCtaForgotPasswordSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.cta.forgot-password-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Action that takes user to password recovery flow"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e00c)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.cta.next-sample"
	public static func onboardingCtaNextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.cta.next-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e018)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.cta.skip-sample"
	public static func onboardingCtaSkipSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.cta.skip-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e027)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.enter-phone-number.header-sample"
	public static func onboardingEnterPhoneNumberHeaderSample(_ localeOverride: String? = nil, userName: String = "there") -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.enter-phone-number.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""), userName)
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e00e)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.information-disclaimer.description-sample"
	public static func onboardingInformationDisclaimerDescriptionSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.information-disclaimer.description-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to let user know why we need to collect information that may be deemed more personal/private"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e00f)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.information-disclaimer.header-sample"
	public static func onboardingInformationDisclaimerHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.information-disclaimer.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e025)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.link-bank.disclaimer-sample"
	public static func onboardingLinkBankDisclaimerSample(_ localeOverride: String? = nil, nmlsId: String) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.link-bank.disclaimer-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Need to display this when we collect a user's bank info"), nmlsId)
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e015)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.link-bank.h2-sample"
	public static func onboardingLinkBankH2Sample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.link-bank.h2-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e01d)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.link-bank.header-sample"
	public static func onboardingLinkBankHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.link-bank.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Header for onboarding step for new users"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e004)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.log-in.header-sample"
	public static func onboardingLogInHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.log-in.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e006)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.log-in.sign-up-message-sample"
	public static func onboardingLogInSignUpMessageSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.log-in.sign-up-message-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to direct user to signup flow if don't already have an account"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e022)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number.disclosure-sample"
	public static func onboardingPhoneNumberDisclosureSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number.disclosure-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Make sure to include this whenever we ask for a user's phone number"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e023)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number.h2-sample"
	public static func onboardingPhoneNumberH2Sample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number.h2-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used when confirming user's phone number"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e02c)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number-verification.didnt-receive-sample"
	public static func onboardingPhoneNumberVerificationDidntReceiveSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number-verification.didnt-receive-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e029)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number-verification.header-sample"
	public static func onboardingPhoneNumberVerificationHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number-verification.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e028)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number-verification.hint-text-sample"
	public static func onboardingPhoneNumberVerificationHintTextSample(_ localeOverride: String? = nil, pluralCount: Int, userPhoneNumber: String, verificationCodeExpiration: String) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number-verification.hint-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Lets user know when the text verification code expires"), pluralCount, userPhoneNumber, verificationCodeExpiration)
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e02d)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number-verification.resend-sample"
	public static func onboardingPhoneNumberVerificationResendSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number-verification.resend-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e024)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.profile.header-sample"
	public static func onboardingProfileHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.profile.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e01c)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.profile.id-disclaimer-sample"
	public static func onboardingProfileIdDisclaimerSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.profile.id-disclaimer-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to make sure users enter their legal information"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e010)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.sign-up.cta-sample"
	public static func onboardingSignUpCtaSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.sign-up.cta-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7e002)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.sign-up.disclaimer-sample"
	public static func onboardingSignUpDisclaimerSample(_ localeOverride: String? = nil, termsAndConditionsLink: String) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.sign-up.disclaimer-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Legal disclaimer for when user is creating their account"), termsAndConditionsLink)
	}

	/// [Open component in Ditto](http://localhost:3000/components/6539441d059e51e6bfe7dfff)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.sign-up.login-message-sample"
	public static func onboardingSignUpLoginMessageSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.sign-up.login-message-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to direct user to login flow if already have an account"))
	}

}
