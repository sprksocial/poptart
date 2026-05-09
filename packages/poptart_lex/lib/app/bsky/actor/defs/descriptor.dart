// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unused_import, duplicate_import, unnecessary_cast, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

import './adult_content_pref.dart';
import './bsky_app_progress_guide.dart';
import './bsky_app_state_pref.dart';
import './content_label_pref.dart';
import './declared_age_pref.dart';
import './feed_view_pref.dart';
import './hidden_posts_pref.dart';
import './interests_pref.dart';
import './known_followers.dart';
import './labeler_pref_item.dart';
import './labelers_pref.dart';
import './live_event_preferences.dart';
import './muted_word.dart';
import './muted_words_pref.dart';
import './nux.dart';
import './personal_details_pref.dart';
import './post_interaction_settings_pref.dart';
import './profile_associated.dart';
import './profile_associated_activity_subscription.dart';
import './profile_associated_chat.dart';
import './profile_associated_germ.dart';
import './profile_view.dart';
import './profile_view_basic.dart';
import './profile_view_detailed.dart';
import './saved_feed.dart';
import './saved_feeds_pref.dart';
import './saved_feeds_pref_v_2.dart';
import './status_view.dart';
import './thread_view_pref.dart';
import './verification_prefs.dart';
import './verification_state.dart';
import './verification_view.dart';
import './viewer_state.dart';
import 'package:poptart_xrpc/poptart_xrpc.dart';

// **************************************************************************
// LexGenerator
// **************************************************************************

final profileViewBasicDescriptor = XRPCObjectDescriptor<ProfileViewBasic>(
  nsid: 'app.bsky.actor.defs',
  defName: 'profileViewBasic',
  fromJson: (json) =>
      const ProfileViewBasicConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ProfileViewBasicConverter().toJson,
  matches: ProfileViewBasic.validate,
);

final profileViewDescriptor = XRPCObjectDescriptor<ProfileView>(
  nsid: 'app.bsky.actor.defs',
  defName: 'profileView',
  fromJson: (json) =>
      const ProfileViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ProfileViewConverter().toJson,
  matches: ProfileView.validate,
);

final profileViewDetailedDescriptor = XRPCObjectDescriptor<ProfileViewDetailed>(
  nsid: 'app.bsky.actor.defs',
  defName: 'profileViewDetailed',
  fromJson: (json) => const ProfileViewDetailedConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const ProfileViewDetailedConverter().toJson,
  matches: ProfileViewDetailed.validate,
);

final profileAssociatedDescriptor = XRPCObjectDescriptor<ProfileAssociated>(
  nsid: 'app.bsky.actor.defs',
  defName: 'profileAssociated',
  fromJson: (json) =>
      const ProfileAssociatedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ProfileAssociatedConverter().toJson,
  matches: ProfileAssociated.validate,
);

final profileAssociatedChatDescriptor =
    XRPCObjectDescriptor<ProfileAssociatedChat>(
      nsid: 'app.bsky.actor.defs',
      defName: 'profileAssociatedChat',
      fromJson: (json) => const ProfileAssociatedChatConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ProfileAssociatedChatConverter().toJson,
      matches: ProfileAssociatedChat.validate,
    );

final profileAssociatedGermDescriptor =
    XRPCObjectDescriptor<ProfileAssociatedGerm>(
      nsid: 'app.bsky.actor.defs',
      defName: 'profileAssociatedGerm',
      fromJson: (json) => const ProfileAssociatedGermConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const ProfileAssociatedGermConverter().toJson,
      matches: ProfileAssociatedGerm.validate,
    );

final profileAssociatedActivitySubscriptionDescriptor =
    XRPCObjectDescriptor<ProfileAssociatedActivitySubscription>(
      nsid: 'app.bsky.actor.defs',
      defName: 'profileAssociatedActivitySubscription',
      fromJson: (json) => const ProfileAssociatedActivitySubscriptionConverter()
          .fromJson(json.cast<String, dynamic>()),
      toJson: const ProfileAssociatedActivitySubscriptionConverter().toJson,
      matches: ProfileAssociatedActivitySubscription.validate,
    );

final viewerStateDescriptor = XRPCObjectDescriptor<ViewerState>(
  nsid: 'app.bsky.actor.defs',
  defName: 'viewerState',
  fromJson: (json) =>
      const ViewerStateConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ViewerStateConverter().toJson,
  matches: ViewerState.validate,
);

final knownFollowersDescriptor = XRPCObjectDescriptor<KnownFollowers>(
  nsid: 'app.bsky.actor.defs',
  defName: 'knownFollowers',
  fromJson: (json) =>
      const KnownFollowersConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const KnownFollowersConverter().toJson,
  matches: KnownFollowers.validate,
);

final verificationStateDescriptor = XRPCObjectDescriptor<VerificationState>(
  nsid: 'app.bsky.actor.defs',
  defName: 'verificationState',
  fromJson: (json) =>
      const VerificationStateConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const VerificationStateConverter().toJson,
  matches: VerificationState.validate,
);

final verificationViewDescriptor = XRPCObjectDescriptor<VerificationView>(
  nsid: 'app.bsky.actor.defs',
  defName: 'verificationView',
  fromJson: (json) =>
      const VerificationViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const VerificationViewConverter().toJson,
  matches: VerificationView.validate,
);

final adultContentPrefDescriptor = XRPCObjectDescriptor<AdultContentPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'adultContentPref',
  fromJson: (json) =>
      const AdultContentPrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const AdultContentPrefConverter().toJson,
  matches: AdultContentPref.validate,
);

final contentLabelPrefDescriptor = XRPCObjectDescriptor<ContentLabelPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'contentLabelPref',
  fromJson: (json) =>
      const ContentLabelPrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ContentLabelPrefConverter().toJson,
  matches: ContentLabelPref.validate,
);

final savedFeedDescriptor = XRPCObjectDescriptor<SavedFeed>(
  nsid: 'app.bsky.actor.defs',
  defName: 'savedFeed',
  fromJson: (json) =>
      const SavedFeedConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SavedFeedConverter().toJson,
  matches: SavedFeed.validate,
);

final savedFeedsPrefV2Descriptor = XRPCObjectDescriptor<SavedFeedsPrefV2>(
  nsid: 'app.bsky.actor.defs',
  defName: 'savedFeedsPrefV2',
  fromJson: (json) =>
      const SavedFeedsPrefV2Converter().fromJson(json.cast<String, dynamic>()),
  toJson: const SavedFeedsPrefV2Converter().toJson,
  matches: SavedFeedsPrefV2.validate,
);

final savedFeedsPrefDescriptor = XRPCObjectDescriptor<SavedFeedsPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'savedFeedsPref',
  fromJson: (json) =>
      const SavedFeedsPrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const SavedFeedsPrefConverter().toJson,
  matches: SavedFeedsPref.validate,
);

final personalDetailsPrefDescriptor = XRPCObjectDescriptor<PersonalDetailsPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'personalDetailsPref',
  fromJson: (json) => const PersonalDetailsPrefConverter().fromJson(
    json.cast<String, dynamic>(),
  ),
  toJson: const PersonalDetailsPrefConverter().toJson,
  matches: PersonalDetailsPref.validate,
);

final declaredAgePrefDescriptor = XRPCObjectDescriptor<DeclaredAgePref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'declaredAgePref',
  fromJson: (json) =>
      const DeclaredAgePrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const DeclaredAgePrefConverter().toJson,
  matches: DeclaredAgePref.validate,
);

final feedViewPrefDescriptor = XRPCObjectDescriptor<FeedViewPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'feedViewPref',
  fromJson: (json) =>
      const FeedViewPrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const FeedViewPrefConverter().toJson,
  matches: FeedViewPref.validate,
);

final threadViewPrefDescriptor = XRPCObjectDescriptor<ThreadViewPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'threadViewPref',
  fromJson: (json) =>
      const ThreadViewPrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const ThreadViewPrefConverter().toJson,
  matches: ThreadViewPref.validate,
);

final interestsPrefDescriptor = XRPCObjectDescriptor<InterestsPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'interestsPref',
  fromJson: (json) =>
      const InterestsPrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const InterestsPrefConverter().toJson,
  matches: InterestsPref.validate,
);

final mutedWordDescriptor = XRPCObjectDescriptor<MutedWord>(
  nsid: 'app.bsky.actor.defs',
  defName: 'mutedWord',
  fromJson: (json) =>
      const MutedWordConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const MutedWordConverter().toJson,
  matches: MutedWord.validate,
);

final mutedWordsPrefDescriptor = XRPCObjectDescriptor<MutedWordsPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'mutedWordsPref',
  fromJson: (json) =>
      const MutedWordsPrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const MutedWordsPrefConverter().toJson,
  matches: MutedWordsPref.validate,
);

final hiddenPostsPrefDescriptor = XRPCObjectDescriptor<HiddenPostsPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'hiddenPostsPref',
  fromJson: (json) =>
      const HiddenPostsPrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const HiddenPostsPrefConverter().toJson,
  matches: HiddenPostsPref.validate,
);

final labelersPrefDescriptor = XRPCObjectDescriptor<LabelersPref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'labelersPref',
  fromJson: (json) =>
      const LabelersPrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LabelersPrefConverter().toJson,
  matches: LabelersPref.validate,
);

final labelerPrefItemDescriptor = XRPCObjectDescriptor<LabelerPrefItem>(
  nsid: 'app.bsky.actor.defs',
  defName: 'labelerPrefItem',
  fromJson: (json) =>
      const LabelerPrefItemConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const LabelerPrefItemConverter().toJson,
  matches: LabelerPrefItem.validate,
);

final bskyAppStatePrefDescriptor = XRPCObjectDescriptor<BskyAppStatePref>(
  nsid: 'app.bsky.actor.defs',
  defName: 'bskyAppStatePref',
  fromJson: (json) =>
      const BskyAppStatePrefConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const BskyAppStatePrefConverter().toJson,
  matches: BskyAppStatePref.validate,
);

final bskyAppProgressGuideDescriptor =
    XRPCObjectDescriptor<BskyAppProgressGuide>(
      nsid: 'app.bsky.actor.defs',
      defName: 'bskyAppProgressGuide',
      fromJson: (json) => const BskyAppProgressGuideConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const BskyAppProgressGuideConverter().toJson,
      matches: BskyAppProgressGuide.validate,
    );

final nuxDescriptor = XRPCObjectDescriptor<Nux>(
  nsid: 'app.bsky.actor.defs',
  defName: 'nux',
  fromJson: (json) =>
      const NuxConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const NuxConverter().toJson,
  matches: Nux.validate,
);

final verificationPrefsDescriptor = XRPCObjectDescriptor<VerificationPrefs>(
  nsid: 'app.bsky.actor.defs',
  defName: 'verificationPrefs',
  fromJson: (json) =>
      const VerificationPrefsConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const VerificationPrefsConverter().toJson,
  matches: VerificationPrefs.validate,
);

final liveEventPreferencesDescriptor =
    XRPCObjectDescriptor<LiveEventPreferences>(
      nsid: 'app.bsky.actor.defs',
      defName: 'liveEventPreferences',
      fromJson: (json) => const LiveEventPreferencesConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const LiveEventPreferencesConverter().toJson,
      matches: LiveEventPreferences.validate,
    );

final postInteractionSettingsPrefDescriptor =
    XRPCObjectDescriptor<PostInteractionSettingsPref>(
      nsid: 'app.bsky.actor.defs',
      defName: 'postInteractionSettingsPref',
      fromJson: (json) => const PostInteractionSettingsPrefConverter().fromJson(
        json.cast<String, dynamic>(),
      ),
      toJson: const PostInteractionSettingsPrefConverter().toJson,
      matches: PostInteractionSettingsPref.validate,
    );

final statusViewDescriptor = XRPCObjectDescriptor<StatusView>(
  nsid: 'app.bsky.actor.defs',
  defName: 'statusView',
  fromJson: (json) =>
      const StatusViewConverter().fromJson(json.cast<String, dynamic>()),
  toJson: const StatusViewConverter().toJson,
  matches: StatusView.validate,
);
