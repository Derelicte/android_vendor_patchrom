.class public Lcom/android/contacts/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/CallDetailActivity$ViewEntry;,
        Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;,
        Lcom/android/contacts/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mHasEditNumberBeforeCall:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field mResources:Landroid/content/res/Resources;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 127
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    .line 196
    new-instance v0, Lcom/android/contacts/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$1;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v0, Lcom/android/contacts/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$2;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 605
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/CallDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->disableCallButton()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/CallTypeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/PhoneCallDetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 792
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 793
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 795
    :cond_0
    return-void
.end method

.method private configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 9
    .parameter "entry"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 639
    const v6, 0x7f070037

    invoke-virtual {p0, v6}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 640
    .local v0, convertView:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 642
    const v6, 0x7f07003c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 643
    .local v2, icon:Landroid/widget/ImageView;
    const v6, 0x7f07003b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 644
    .local v1, divider:Landroid/view/View;
    const v6, 0x7f070039

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 646
    .local v5, text:Landroid/widget/TextView;
    const v6, 0x7f070038

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 647
    .local v4, mainAction:Landroid/view/View;
    iget-object v6, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 649
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 652
    iget-object v6, p0, Lcom/android/contacts/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 655
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 656
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 657
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 662
    :goto_0
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    const v6, 0x7f07003a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 665
    .local v3, label:Landroid/widget/TextView;
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 666
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    :goto_1
    return-void

    .line 659
    .end local v3           #label:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 668
    .restart local v3       #label:Landroid/widget/TextView;
    :cond_1
    iget-object v6, p1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private disableCallButton()V
    .locals 2

    .prologue
    .line 634
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    return-void
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 7

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 309
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 311
    const/4 v4, 0x1

    new-array v3, v4, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 318
    :cond_0
    return-object v3

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 314
    .local v0, ids:[J
    array-length v4, v0

    new-array v3, v4, [Landroid/net/Uri;

    .line 315
    .local v3, uris:[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 316
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    aget-wide v5, v0, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    .locals 21
    .parameter "callUri"

    .prologue
    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 538
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 540
    .local v17, callCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_0

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 541
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot find content: "

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_1

    .line 589
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    .line 545
    :cond_2
    const/4 v2, 0x2

    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, number:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 547
    .local v8, date:J
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 548
    .local v10, duration:J
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 549
    .local v18, callType:I
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, countryIso:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 552
    .local v6, geocode:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 553
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 565
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {v2, v3, v5}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v19

    .line 569
    .local v19, info:Lcom/android/contacts/calllog/ContactInfo;
    :goto_0
    if-nez v19, :cond_6

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 571
    .local v4, formattedNumber:Ljava/lang/CharSequence;
    const-string v12, ""

    .line 572
    .local v12, nameText:Ljava/lang/CharSequence;
    const/4 v13, 0x0

    .line 573
    .local v13, numberType:I
    const-string v14, ""

    .line 574
    .local v14, numberLabel:Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .line 575
    .local v16, photoUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 584
    .local v15, lookupUri:Landroid/net/Uri;
    :goto_1
    new-instance v2, Lcom/android/contacts/PhoneCallDetails;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v20, 0x0

    aput v18, v7, v20

    invoke-direct/range {v2 .. v16}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 588
    if-eqz v17, :cond_4

    .line 589
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v2

    .line 565
    .end local v4           #formattedNumber:Ljava/lang/CharSequence;
    .end local v12           #nameText:Ljava/lang/CharSequence;
    .end local v13           #numberType:I
    .end local v14           #numberLabel:Ljava/lang/CharSequence;
    .end local v15           #lookupUri:Landroid/net/Uri;
    .end local v16           #photoUri:Landroid/net/Uri;
    .end local v19           #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_5
    const/16 v19, 0x0

    goto :goto_0

    .line 577
    .restart local v19       #info:Lcom/android/contacts/calllog/ContactInfo;
    :cond_6
    :try_start_2
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 578
    .restart local v4       #formattedNumber:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 579
    .restart local v12       #nameText:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 580
    .restart local v13       #numberType:I
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 581
    .restart local v14       #numberLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 582
    .restart local v16       #photoUri:Landroid/net/Uri;
    move-object/from16 v0, v19

    iget-object v15, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v15       #lookupUri:Landroid/net/Uri;
    goto :goto_1
.end method

.method private getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    .locals 6
    .parameter "statusCursor"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 703
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 704
    .local v0, messages:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 705
    const/4 v1, 0x0

    .line 713
    :goto_0
    return-object v1

    .line 709
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 710
    const-string v1, "CallDetail"

    const-string v2, "Expected 1, found (%d) num of status messages. Will use the first one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    goto :goto_0
.end method

.method private getVoicemailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 600
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 602
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVoicemailUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method private hasVoicemail()Z
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;)V
    .locals 3
    .parameter "photoUri"

    .prologue
    const/4 v2, 0x1

    .line 596
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZ)V

    .line 597
    return-void
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4
    .parameter "voicemailUri"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$3;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 799
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 801
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 802
    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 803
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->finish()V

    .line 804
    return-void
.end method

.method private optionallyHandleVoicemail()V
    .locals 7

    .prologue
    const v6, 0x7f070035

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 255
    invoke-virtual {p0, v6}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 256
    .local v2, voicemailContainer:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    invoke-direct {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;-><init>()V

    .line 261
    .local v1, playbackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v0, fragmentArguments:Landroid/os/Bundle;
    const-string v3, "EXTRA_VOICEMAIL_URI"

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    const-string v3, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 270
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/CallDetailActivityQueryHandler;->startVoicemailStatusQuery(Landroid/net/Uri;)V

    .line 271
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    .line 277
    .end local v0           #fragmentArguments:Landroid/os/Bundle;
    .end local v1           #playbackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .parameter "callUris"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 533
    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1
    .parameter "waitForFarState"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 822
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 817
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->setContentView(I)V

    .line 216
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 217
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 218
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 220
    new-instance v0, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 221
    new-instance v0, Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 222
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    .line 224
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    .line 225
    new-instance v0, Lcom/android/contacts/CallDetailActivityQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivityQueryHandler;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

    .line 226
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    .line 228
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    .line 229
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    .line 232
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 233
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 234
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 235
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 236
    new-instance v0, Lcom/android/contacts/ProximitySensorManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 237
    new-instance v0, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    .line 238
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->configureActionBar()V

    .line 239
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->optionallyHandleVoicemail()V

    .line 240
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 719
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 323
    packed-switch p1, :pswitch_data_0

    .line 337
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 326
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 328
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 331
    .local v0, callIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 332
    const/4 v2, 0x1

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V
    .locals 4
    .parameter "menuItem"

    .prologue
    .line 771
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 772
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 734
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 736
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->onHomeSelected()V

    .line 737
    const/4 v0, 0x1

    return v0

    .line 734
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 9
    .parameter "menuItem"

    .prologue
    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 748
    .local v1, callIds:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    .local v0, arr$:[Landroid/net/Uri;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 749
    .local v2, callUri:Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 750
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 748
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 754
    .end local v2           #callUri:Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v6, Lcom/android/contacts/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v7, Lcom/android/contacts/CallDetailActivity$5;

    invoke-direct {v7, p0, v1}, Lcom/android/contacts/CallDetailActivity$5;-><init>(Lcom/android/contacts/CallDetailActivity;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 768
    return-void
.end method

.method public onMenuTrashVoicemail(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "menuItem"

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    .line 776
    .local v0, voicemailUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v2, Lcom/android/contacts/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v3, Lcom/android/contacts/CallDetailActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/CallDetailActivity$6;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 788
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->disableProximitySensor(Z)V

    .line 810
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 811
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 812
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 726
    const v0, 0x7f07016e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 727
    const v0, 0x7f07016f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCall:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 728
    const v0, 0x7f07016d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 729
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 726
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    .line 246
    return-void
.end method

.method protected updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 4
    .parameter "statusCursor"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 674
    if-nez p1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 700
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v0

    .line 679
    .local v0, message:Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallDetails()Z

    move-result v1

    if-nez v1, :cond_2

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 684
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 686
    iget v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 687
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 689
    :cond_3
    iget-object v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 690
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 691
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/CallDetailActivity$4;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 698
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
