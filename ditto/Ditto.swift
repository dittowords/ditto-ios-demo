//
// Ditto.swift  
//
// Created by the Ditto CLI on 10/31/2023, 2:14:12 PM
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

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0ea)
	///
	/// - Returns: The localized string for the Ditto identifier "cards.label.card-number-sample"
	public static func cardsLabelCardNumberSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("cards.label.card-number-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0eb)
	///
	/// - Returns: The localized string for the Ditto identifier "cards.label.expiration-sample"
	public static func cardsLabelExpirationSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("cards.label.expiration-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0ec)
	///
	/// - Returns: The localized string for the Ditto identifier "cards.offer-sample"
	public static func cardsOfferSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("cards.offer-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to bring user to personalized offers flow"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0ed)
	///
	/// - Returns: The localized string for the Ditto identifier "errors.offline.description-sample"
	public static func errorsOfflineDescriptionSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("errors.offline.description-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Keep it short and concise"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0ee)
	///
	/// - Returns: The localized string for the Ditto identifier "errors.offline.header-sample"
	public static func errorsOfflineHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("errors.offline.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e9)
	///
	/// - Returns: The localized string for the Ditto identifier "home.budget-feedback.description-sample"
	public static func homeBudgetFeedbackDescriptionSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("home.budget-feedback.description-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Feedback that's tailored to user's current financial status"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e8)
	///
	/// - Returns: The localized string for the Ditto identifier "home.budget-feedback.header-sample"
	public static func homeBudgetFeedbackHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("home.budget-feedback.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Feedback that's tailored to user's current financial status"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e6)
	///
	/// - Returns: The localized string for the Ditto identifier "home.cta.create-budget-sample"
	public static func homeCtaCreateBudgetSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("home.cta.create-budget-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Action to start process of creating another budget limit for user."))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0d8)
	///
	/// - Returns: The localized string for the Ditto identifier "home.cta.request-payment-sample"
	public static func homeCtaRequestPaymentSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("home.cta.request-payment-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Action to start process of requesting a payment from another user(s)"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e2)
	///
	/// - Returns: The localized string for the Ditto identifier "home.cta.send-payment-sample"
	public static func homeCtaSendPaymentSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("home.cta.send-payment-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Action to start process of sending a payment to another user(s)"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0fd)
	///
	/// - Returns: The localized string for the Ditto identifier "input.birthday.helper-text-sample"
	public static func inputBirthdayHelperTextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.birthday.helper-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Disclaimer on age mininum to create an account."))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0dc)
	///
	/// - Returns: The localized string for the Ditto identifier "input.birthday.label-sample"
	public static func inputBirthdayLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.birthday.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0dd)
	///
	/// - Returns: The localized string for the Ditto identifier "input.birthday.placeholder-sample"
	public static func inputBirthdayPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.birthday.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f0)
	///
	/// - Returns: The localized string for the Ditto identifier "input.card-expiration.placeholder-sample"
	public static func inputCardExpirationPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.card-expiration.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f7)
	///
	/// - Returns: The localized string for the Ditto identifier "input.confirm-identity.helper-text-sample"
	public static func inputConfirmIdentityHelperTextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.confirm-identity.helper-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to reassure user that we won't run a credit check using the SSN and address they provide us"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e3)
	///
	/// - Returns: The localized string for the Ditto identifier "input.confirm-password.label-sample"
	public static func inputConfirmPasswordLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.confirm-password.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0df)
	///
	/// - Returns: The localized string for the Ditto identifier "input.country-of-residence.label-sample"
	public static func inputCountryOfResidenceLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.country-of-residence.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f2)
	///
	/// - Returns: The localized string for the Ditto identifier "input.cvv.label-sample"
	public static func inputCvvLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.cvv.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0d5)
	///
	/// - Returns: The localized string for the Ditto identifier "input.email.label-sample"
	public static func inputEmailLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.email.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0d7)
	///
	/// - Returns: The localized string for the Ditto identifier "input.email.placeholder-sample"
	public static func inputEmailPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.email.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0fb)
	///
	/// - Returns: The localized string for the Ditto identifier "input.first-name.label-sample"
	public static func inputFirstNameLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.first-name.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f6)
	///
	/// - Returns: The localized string for the Ditto identifier "input.last-4-ssn.label-sample"
	public static func inputLast4SsnLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.last-4-ssn.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0fc)
	///
	/// - Returns: The localized string for the Ditto identifier "input.last-name.label-sample"
	public static func inputLastNameLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.last-name.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c102)
	///
	/// - Returns: The localized string for the Ditto identifier "input.middle-name.helper-text-sample"
	public static func inputMiddleNameHelperTextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.middle-name.helper-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to make sure user only enters their middle name if it's on their official ID"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0fa)
	///
	/// - Returns: The localized string for the Ditto identifier "input.middle-name.label-sample"
	public static func inputMiddleNameLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.middle-name.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0d4)
	///
	/// - Returns: The localized string for the Ditto identifier "input.password.label-sample"
	public static func inputPasswordLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.password.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0de)
	///
	/// - Returns: The localized string for the Ditto identifier "input.phone-number.placeholder-sample"
	public static func inputPhoneNumberPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.phone-number.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e0)
	///
	/// - Returns: The localized string for the Ditto identifier "input.select.placeholder-sample"
	public static func inputSelectPlaceholderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.select.placeholder-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f3)
	///
	/// - Returns: The localized string for the Ditto identifier "input.zip-code.label-sample"
	public static func inputZipCodeLabelSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("input.zip-code.label-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c107)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.account-details.header-sample"
	public static func onboardingAccountDetailsHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.account-details.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c106)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.account-details.hint-text-sample"
	public static func onboardingAccountDetailsHintTextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.account-details.hint-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f5)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.confirm-identity.header-sample"
	public static func onboardingConfirmIdentityHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.confirm-identity.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0ef)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.cta.back-sample"
	public static func onboardingCtaBackSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.cta.back-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0da)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.cta.forgot-password-sample"
	public static func onboardingCtaForgotPasswordSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.cta.forgot-password-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Action that takes user to password recovery flow"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e1)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.cta.next-sample"
	public static func onboardingCtaNextSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.cta.next-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f4)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.cta.skip-sample"
	public static func onboardingCtaSkipSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.cta.skip-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c103)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.enter-phone-number.header-sample"
	public static func onboardingEnterPhoneNumberHeaderSample(_ localeOverride: String? = nil, userNameSample: String = "there") -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.enter-phone-number.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""), userNameSample)
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e4)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.information-disclaimer.description-sample"
	public static func onboardingInformationDisclaimerDescriptionSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.information-disclaimer.description-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to let user know why we need to collect information that may be deemed more personal/private"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e5)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.information-disclaimer.header-sample"
	public static func onboardingInformationDisclaimerHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.information-disclaimer.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c101)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.link-bank.disclaimer-sample"
	public static func onboardingLinkBankDisclaimerSample(_ localeOverride: String? = nil, nmlsIdSample: String) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.link-bank.disclaimer-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Need to display this when we collect a user's bank info"), nmlsIdSample)
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f1)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.link-bank.h2-sample"
	public static func onboardingLinkBankH2Sample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.link-bank.h2-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f9)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.link-bank.header-sample"
	public static func onboardingLinkBankHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.link-bank.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Header for onboarding step for new users"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0d9)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.log-in.header-sample"
	public static func onboardingLogInHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.log-in.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0db)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.log-in.sign-up-message-sample"
	public static func onboardingLogInSignUpMessageSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.log-in.sign-up-message-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to direct user to signup flow if don't already have an account"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0fe)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number.disclosure-sample"
	public static func onboardingPhoneNumberDisclosureSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number.disclosure-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Make sure to include this whenever we ask for a user's phone number"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0ff)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number.h2-sample"
	public static func onboardingPhoneNumberH2Sample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number.h2-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used when confirming user's phone number"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c108)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number-verification.didnt-receive-sample"
	public static func onboardingPhoneNumberVerificationDidntReceiveSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number-verification.didnt-receive-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c105)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number-verification.header-sample"
	public static func onboardingPhoneNumberVerificationHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number-verification.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c104)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number-verification.hint-text-sample"
	public static func onboardingPhoneNumberVerificationHintTextSample(_ localeOverride: String? = nil, pluralCount: Int, userPhoneNumberSample: String, verificationCodeExpirationSample: String) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number-verification.hint-text-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Lets user know when the text verification code expires"), pluralCount, userPhoneNumberSample, verificationCodeExpirationSample)
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c109)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.phone-number-verification.resend-sample"
	public static func onboardingPhoneNumberVerificationResendSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.phone-number-verification.resend-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c100)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.profile.header-sample"
	public static func onboardingProfileHeaderSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.profile.header-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0f8)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.profile.id-disclaimer-sample"
	public static func onboardingProfileIdDisclaimerSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.profile.id-disclaimer-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to make sure users enter their legal information"))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0e7)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.sign-up.cta-sample"
	public static func onboardingSignUpCtaSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.sign-up.cta-sample", tableName: "components", bundle: getBundle(localeOverride), comment: ""))
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0d6)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.sign-up.disclaimer-sample"
	public static func onboardingSignUpDisclaimerSample(_ localeOverride: String? = nil, termsAndConditionsLinkSample: String) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.sign-up.disclaimer-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Legal disclaimer for when user is creating their account"), termsAndConditionsLinkSample)
	}

	/// [Open component in Ditto](http://localhost:3000/components/6541613055c8d4be5732c0d3)
	///
	/// - Returns: The localized string for the Ditto identifier "onboarding.sign-up.login-message-sample"
	public static func onboardingSignUpLoginMessageSample(_ localeOverride: String? = nil) -> String {  
		  String.localizedStringWithFormat(NSLocalizedString("onboarding.sign-up.login-message-sample", tableName: "components", bundle: getBundle(localeOverride), comment: "Used to direct user to login flow if already have an account"))
	}

}
