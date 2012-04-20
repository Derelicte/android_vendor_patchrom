.class public Lcom/android/phone/MiuiCallCard;
.super Lcom/android/phone/CallCard;
.source "MiuiCallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiCallCard$4;,
        Lcom/android/phone/MiuiCallCard$CallCardInfo;
    }
.end annotation


# instance fields
.field private final STATE_DOUBLE_CALLS:I

.field private final STATE_NO_CALL:I

.field private final STATE_RINGING_CALL:I

.field private final STATE_SINGLE_CALL:I

.field private mBigPhoto:Landroid/widget/ImageView;

.field private mCallCard:Landroid/widget/LinearLayout;

.field private mCallStatus:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mConferenceManagerButton:Landroid/view/View;

.field private mDoubleCallsInfoBar:Landroid/view/View;

.field private mElapsedTime:Landroid/widget/TextView;

.field private mExtraInfo:Landroid/widget/TextView;

.field private mFirstCallCard:Landroid/widget/LinearLayout;

.field private mFirstCallStatus:Landroid/widget/TextView;

.field private mFirstCallStatusImage:Landroid/widget/ImageView;

.field private mFirstCallTime:Lcom/android/phone/CallTime;

.field private mFirstConferenceManagerButton:Landroid/view/View;

.field private mFirstElapsedTime:Landroid/widget/TextView;

.field private mFirstName:Landroid/widget/TextView;

.field private mFirstPhoneNumber:Landroid/widget/TextView;

.field private mFirstTelocation:Landroid/widget/TextView;

.field private mImageRoundCorner:I

.field private mInfoBar:Landroid/view/ViewGroup;

.field private mLockScreenWallpaper:Landroid/widget/ImageView;

.field private mMaxTextSizeOfDigits:F

.field private mMinTextSizeOfDigits:F

.field private mName:Landroid/widget/TextView;

.field private mPaintForMeasureText:Landroid/graphics/Paint;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

.field private mScaledDensity:F

.field private mSecondCallCard:Landroid/widget/LinearLayout;

.field private mSecondCallStatus:Landroid/widget/TextView;

.field private mSecondCallStatusImage:Landroid/widget/ImageView;

.field private mSecondCallTime:Lcom/android/phone/CallTime;

.field private mSecondConferenceManagerButton:Landroid/view/View;

.field private mSecondElapsedTime:Landroid/widget/TextView;

.field private mSecondName:Landroid/widget/TextView;

.field private mSecondPhoneNumber:Landroid/widget/TextView;

.field private mSecondTelocation:Landroid/widget/TextView;

.field private mState:I

.field private mTelocation:Landroid/widget/TextView;

.field private mTelocationMaxWidthWithPhoto:I

.field private mTelocationMaxWidthWithoutPhoto:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    .line 107
    const/high16 v0, 0x41c0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mMinTextSizeOfDigits:F

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->STATE_NO_CALL:I

    .line 112
    iput v1, p0, Lcom/android/phone/MiuiCallCard;->STATE_RINGING_CALL:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->STATE_SINGLE_CALL:I

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->STATE_DOUBLE_CALLS:I

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 138
    .local v6, metrics:Landroid/util/DisplayMetrics;
    iget v0, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mScaledDensity:F

    .line 140
    const/high16 v0, 0x40a0

    invoke-static {v1, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mImageRoundCorner:I

    .line 141
    const/high16 v0, 0x428c

    invoke-static {v1, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithPhoto:I

    .line 142
    const/high16 v0, 0x4334

    invoke-static {v1, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithoutPhoto:I

    .line 144
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0e002f

    invoke-direct {v7, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 145
    .local v7, span1:Landroid/text/style/TextAppearanceSpan;
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    const v0, 0x7f0e0032

    invoke-direct {v8, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 146
    .local v8, span2:Landroid/text/style/TextAppearanceSpan;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v8}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/phone/MiuiCallCard;->updateElapsedTimeWidget(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method private adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7
    .parameter "v"
    .parameter "digits"

    .prologue
    const/4 v6, 0x0

    .line 1035
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 1038
    .local v3, widthView:F
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1039
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    .line 1040
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 1042
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1043
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    :cond_0
    iget v1, p0, Lcom/android/phone/MiuiCallCard;->mMaxTextSizeOfDigits:F

    .line 1047
    .local v1, textSize:F
    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1048
    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 1049
    .local v2, widthText:F
    :goto_0
    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 1051
    const/high16 v4, 0x3f80

    sub-float/2addr v1, v4

    .line 1052
    iget v4, p0, Lcom/android/phone/MiuiCallCard;->mMinTextSizeOfDigits:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 1053
    iget v1, p0, Lcom/android/phone/MiuiCallCard;->mMinTextSizeOfDigits:F

    .line 1059
    :cond_1
    invoke-virtual {p1, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1060
    return-void

    .line 1056
    :cond_2
    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1057
    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mPaintForMeasureText:Landroid/graphics/Paint;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_0
.end method

.method private createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;
    .locals 9
    .parameter "call"
    .parameter "callerInfo"

    .prologue
    const/4 v7, -0x1

    .line 556
    new-instance v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/android/phone/MiuiCallCard$CallCardInfo;-><init>(Lcom/android/phone/MiuiCallCard;Lcom/android/phone/MiuiCallCard$1;)V

    .line 557
    .local v8, info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    if-eqz p2, :cond_0

    .line 558
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->isCdmaThreeWayOrConf(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v1, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0383

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 565
    :goto_0
    const-string v0, ""

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 600
    :cond_0
    :goto_1
    return-object v8

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0384

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 568
    :cond_2
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v0, :cond_4

    .line 570
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 585
    :cond_3
    :goto_2
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 586
    const-string v0, ""

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 596
    :goto_3
    invoke-static {p2}, Lcom/android/phone/MiuiPhoneUtils;->getDisplayName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 597
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-object v0, v0, Lmiui/telephony/ExtraCallerInfo;->company:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    goto :goto_1

    .line 571
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_5

    .line 573
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 574
    :cond_5
    iget-wide v0, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p2}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 576
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v7}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 578
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 580
    .local v6, personUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    move-object v0, p2

    move-object v2, p0

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto :goto_2

    .line 587
    .end local v6           #personUri:Landroid/net/Uri;
    :cond_6
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 588
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    .line 589
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 590
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    .line 593
    :cond_8
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3
.end method

.method private createPostDialTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;
    .locals 6

    .prologue
    .line 158
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v2}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v3}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v4}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPostDialTextAppearanceSpan:Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1097
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1098
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1099
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1102
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    :cond_0
    return-void
.end method

.method private getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f0c016c

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 607
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 610
    if-nez v5, :cond_3

    .line 616
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 683
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v1

    .line 685
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    .line 686
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0191

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 691
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->isForwarded(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c02ac

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    .line 695
    :cond_0
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 697
    iget-object v3, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 698
    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 699
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 702
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 704
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c016d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 705
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 763
    :cond_2
    :goto_2
    return-object v1

    .line 623
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 624
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 625
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 629
    :goto_3
    if-eqz v3, :cond_f

    .line 630
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhotoTracker:Landroid/pim/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v3}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    .line 635
    :goto_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 636
    invoke-static {v5}, Lcom/android/phone/MiuiExtraConnectionData;->getOrigDialAddress(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v6

    .line 637
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v7

    .line 638
    if-eqz v3, :cond_5

    .line 639
    if-eqz v6, :cond_4

    iget-object v8, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v2

    .line 643
    :cond_4
    if-eqz v7, :cond_5

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v2

    .line 650
    :cond_5
    if-eqz v0, :cond_7

    .line 652
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_0

    .line 626
    :cond_6
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_10

    move-object v0, v1

    .line 627
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    goto :goto_3

    .line 658
    :cond_7
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_8

    .line 660
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 661
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 662
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    move-object v0, v3

    goto/16 :goto_0

    .line 667
    :cond_8
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_9

    move-object v0, v3

    goto/16 :goto_0

    .line 673
    :cond_9
    const-string v0, "CallCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCall: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto/16 :goto_0

    .line 688
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v3}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    goto/16 :goto_1

    .line 707
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 708
    sget-object v3, Lcom/android/phone/MiuiCallCard$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 760
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallCardInfo: unexpected call state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 711
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    check-cast v0, Lcom/android/phone/MiuiCallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/MiuiCallNotifier;->getRedialTimes()I

    move-result v0

    .line 712
    if-gez v0, :cond_c

    .line 713
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 717
    :goto_5
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 715
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c02aa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    goto :goto_5

    .line 722
    :pswitch_1
    const-string v0, ""

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 726
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_d

    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v2, :cond_d

    .line 728
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 730
    :cond_d
    iput-object v4, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 734
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0173

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 735
    iput-object v4, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 739
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0172

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 740
    iput-object v4, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 744
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0171

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 745
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v2

    .line 746
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiCallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 748
    iget-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0322

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 752
    :cond_e
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    goto/16 :goto_2

    .line 757
    :pswitch_6
    const-string v0, "CallCard"

    const-string v2, "getCallCardInfo: IDLE call in the call card"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto/16 :goto_4

    :cond_10
    move-object v3, v4

    goto/16 :goto_3

    .line 708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getConferenceCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;
    .locals 14
    .parameter "call"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 495
    new-instance v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;

    invoke-direct {v6, p0, v12}, Lcom/android/phone/MiuiCallCard$CallCardInfo;-><init>(Lcom/android/phone/MiuiCallCard;Lcom/android/phone/MiuiCallCard$1;)V

    .line 497
    .local v6, info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    iput-boolean v11, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    .line 498
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c016e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 499
    iput-object v12, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    .line 501
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 508
    iput-boolean v13, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    .line 509
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    .line 545
    .end local v6           #info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    :cond_0
    :goto_0
    return-object v6

    .line 511
    .restart local v6       #info:Lcom/android/phone/MiuiCallCard$CallCardInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 512
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 513
    .local v3, count:I
    const/4 v1, 0x0

    .line 514
    .local v1, callerInfo:Lcom/android/internal/telephony/CallerInfo;
    if-lez v3, :cond_5

    .line 515
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 516
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 517
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v7

    .line 518
    .local v7, o:Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_2

    .line 519
    check-cast v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v7           #o:Ljava/lang/Object;
    iget-object v1, v7, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 525
    :goto_2
    iget-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 526
    invoke-direct {p0, p1, v1}, Lcom/android/phone/MiuiCallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 515
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 520
    .restart local v7       #o:Ljava/lang/Object;
    :cond_2
    instance-of v9, v7, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v9, :cond_3

    move-object v1, v7

    .line 521
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_2

    .line 523
    :cond_3
    const-string v9, "CallCard"

    const-string v10, "getConferenceCallCardInfo: no caller info"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 528
    .end local v7           #o:Ljava/lang/Object;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1, v1}, Lcom/android/phone/MiuiCallCard;->createCallCardInfo(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    .line 532
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #i:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c02d1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    .line 533
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 534
    .local v8, state:Lcom/android/internal/telephony/Call$State;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_6

    .line 535
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0172

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    .line 539
    :cond_6
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, digitsPressed:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 541
    iget-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    .line 542
    iput-object v4, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    .line 543
    const-string v9, ""

    iput-object v9, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "call"

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 769
    return-object v0
.end method

.method private inflateDoubleCallsInfoBar()V
    .locals 3

    .prologue
    .line 236
    const v1, 0x7f07003c

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 237
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 239
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    .line 241
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    .line 242
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    .line 244
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    .line 245
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    .line 246
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstTelocation:Landroid/widget/TextView;

    .line 247
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatus:Landroid/widget/TextView;

    .line 248
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatusImage:Landroid/widget/ImageView;

    .line 249
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    .line 250
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    .line 251
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    new-instance v1, Lcom/android/phone/CallTime;

    new-instance v2, Lcom/android/phone/MiuiCallCard$2;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiCallCard$2;-><init>(Lcom/android/phone/MiuiCallCard;)V

    invoke-direct {v1, v2}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    .line 259
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    .line 260
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    .line 261
    const v1, 0x7f07002c

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondTelocation:Landroid/widget/TextView;

    .line 262
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatus:Landroid/widget/TextView;

    .line 263
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatusImage:Landroid/widget/ImageView;

    .line 264
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    .line 265
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    .line 266
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    new-instance v1, Lcom/android/phone/CallTime;

    new-instance v2, Lcom/android/phone/MiuiCallCard$3;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiCallCard$3;-><init>(Lcom/android/phone/MiuiCallCard;)V

    invoke-direct {v1, v2}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    .line 273
    return-void
.end method

.method private isCdmaThreeWayOrConf(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    .line 549
    invoke-static {p1}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v0

    .line 550
    .local v0, state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshAfterInflate()V
    .locals 2

    .prologue
    .line 216
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    .line 217
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallCard:Landroid/widget/LinearLayout;

    .line 218
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallStatus:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v0, Lcom/android/phone/CallTime;

    new-instance v1, Lcom/android/phone/MiuiCallCard$1;

    invoke-direct {v1, p0}, Lcom/android/phone/MiuiCallCard$1;-><init>(Lcom/android/phone/MiuiCallCard;)V

    invoke-direct {v0, v1}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 233
    return-void
.end method

.method private switchFrontgroundCallCard(ZZ)V
    .locals 5
    .parameter "isFirstFrontground"
    .parameter "animation"

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 455
    if-eqz p2, :cond_2

    const-wide/16 v0, 0xc8

    .line 456
    .local v0, duration:J
    :goto_0
    if-eqz p1, :cond_3

    .line 457
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 459
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 460
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 463
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 464
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 465
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 479
    :cond_1
    :goto_1
    return-void

    .line 455
    .end local v0           #duration:J
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 468
    .restart local v0       #duration:J
    :cond_3
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 469
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 470
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 471
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 473
    :cond_4
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 475
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 476
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallCard:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method private updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 814
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 816
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIONE:call.state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getConferenceCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v0

    .line 821
    :goto_0
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v1}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 824
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 831
    :goto_1
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 832
    if-eqz p7, :cond_0

    .line 833
    const/4 v1, 0x0

    invoke-virtual {p7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 835
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 844
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 846
    const-string v1, "CallCard"

    const-string v2, "MIONE:call timer reset"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {p9, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 848
    invoke-virtual {p9}, Lcom/android/phone/CallTime;->reset()V

    .line 849
    invoke-virtual {p9}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 858
    :goto_3
    iget-boolean v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->isConference:Z

    if-eqz v1, :cond_8

    .line 859
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    invoke-virtual {p5, p10}, Landroid/view/View;->setEnabled(Z)V

    .line 865
    :goto_4
    if-eqz p10, :cond_1

    .line 866
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 868
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 869
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 870
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_9

    .line 871
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 872
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 873
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 881
    :cond_1
    :goto_5
    invoke-virtual {p6}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    invoke-virtual {p8}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 883
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 884
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->extraInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    :goto_6
    return-void

    .line 818
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 827
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->telocation:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 837
    :cond_4
    if-eqz p7, :cond_5

    .line 838
    const/16 v1, 0x8

    invoke-virtual {p7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 841
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->callStatus:Ljava/lang/String;

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 850
    :cond_6
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 851
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    const/16 v1, 0x8

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 854
    :cond_7
    invoke-virtual {p9}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 855
    iget-object v1, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->elapsedTime:Ljava/lang/String;

    invoke-virtual {p8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 862
    :cond_8
    const/16 v1, 0x8

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 874
    :cond_9
    iget v1, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 875
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/phone/MiuiCallCard$CallCardInfo;->photo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 876
    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 886
    :cond_a
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6
.end method

.method private updateCallCard()V
    .locals 6

    .prologue
    const v5, 0x7f0e0030

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 276
    iget v2, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 300
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->hideCallCardElements()V

    .line 302
    :goto_0
    return-void

    .line 279
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 283
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, l:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e002f

    invoke-static {v2, v3, v4}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 287
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iput v2, p0, Lcom/android/phone/MiuiCallCard;->mMaxTextSizeOfDigits:F

    goto :goto_0

    .line 290
    .end local v0           #i:I
    .end local v1           #l:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-nez v2, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->inflateDoubleCallsInfoBar()V

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 295
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 296
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/MiuiPhoneUtils;->setTextStyle(Landroid/widget/TextView;Landroid/content/Context;I)V

    .line 297
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iput v2, p0, Lcom/android/phone/MiuiCallCard;->mMaxTextSizeOfDigits:F

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDoubleCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Z)V
    .locals 12
    .parameter "firstCall"
    .parameter "secondCall"
    .parameter "isFirstCallFrontground"

    .prologue
    const/4 v11, 0x1

    .line 441
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mFirstTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatusImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    move-object v0, p0

    move-object v1, p1

    move v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/MiuiCallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 446
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mSecondTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatusImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    if-nez p3, :cond_0

    move v10, v11

    :goto_0
    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/MiuiCallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 451
    invoke-direct {p0, p3, v11}, Lcom/android/phone/MiuiCallCard;->switchFrontgroundCallCard(ZZ)V

    .line 452
    return-void

    .line 446
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static updateElapsedTimeWidget(Landroid/widget/TextView;J)V
    .locals 2
    .parameter "elapsedTime"
    .parameter "timeElapsed"

    .prologue
    .line 947
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 948
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNoCall()V
    .locals 0

    .prologue
    .line 900
    return-void
.end method

.method private updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7
    .parameter "call"
    .parameter "phoneNumber"
    .parameter "number"

    .prologue
    .line 795
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 796
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 797
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 800
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->createPostDialTextAppearanceSpan()Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 803
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #s:Ljava/lang/String;
    .end local v2           #ssb:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiCallCard;->updateSingleCall(Lcom/android/internal/telephony/Call;)V

    .line 435
    return-void
.end method

.method private updateSingleCall(Lcom/android/internal/telephony/Call;)V
    .locals 11
    .parameter "call"

    .prologue
    .line 487
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mCallStatus:Landroid/widget/TextView;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/phone/MiuiCallCard;->mCallTime:Lcom/android/phone/CallTime;

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/phone/MiuiCallCard;->updateCall(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/phone/CallTime;Z)V

    .line 491
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1069
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1070
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1071
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1072
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1073
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1074
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mConferenceManagerButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1075
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mExtraInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1077
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1079
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1080
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1081
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1082
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallStatusImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1083
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1084
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstConferenceManagerButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1085
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1086
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1087
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondTelocation:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1088
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatus:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1089
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallStatusImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1090
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondElapsedTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1091
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondConferenceManagerButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MiuiCallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1093
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 154
    const v0, 0x7f040003

    return v0
.end method

.method public hideCallCardElements()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 969
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 970
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mDoubleCallsInfoBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 974
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 975
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, l:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 976
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mInfoBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 982
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 985
    sparse-switch v0, :sswitch_data_0

    .line 995
    const-string v1, "CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :goto_0
    return-void

    .line 991
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 985
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070025 -> :sswitch_0
        0x7f07002d -> :sswitch_0
        0x7f07003b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/high16 v6, 0x30a

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 185
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    .line 186
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 187
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 189
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mBigPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/MiuiCallCard;->addView(Landroid/view/View;I)V

    .line 194
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    .line 195
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_0

    .line 196
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 200
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 202
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/MiuiCallCard;->addView(Landroid/view/View;I)V

    .line 206
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->refreshAfterInflate()V

    .line 207
    return-void

    .line 198
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "iView"
    .parameter "imagePresent"

    .prologue
    .line 929
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 930
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 931
    .local v1, success:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 932
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 933
    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/phone/MiuiCallCard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget v5, p0, Lcom/android/phone/MiuiCallCard;->mImageRoundCorner:I

    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mImageRoundCorner:I

    invoke-static {v2, v5, v6}, Lmiui/util/GraphicsUtils;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 937
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v2}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 939
    :cond_0
    return-void

    .line 930
    .end local v1           #success:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 910
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/android/phone/MiuiCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast p2, Lcom/android/internal/telephony/Call;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/MiuiCallCard;->getSingleConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .line 917
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v0}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 919
    :cond_0
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 168
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mFirstCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mSecondCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 174
    :cond_1
    return-void
.end method

.method public updateForDigitPressed()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    .line 1004
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1005
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, digits:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1007
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1008
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, v3}, Lcom/android/phone/MiuiCallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget v3, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    if-ne v3, v5, :cond_2

    .line 1011
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/android/phone/MiuiCallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1015
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/android/phone/MiuiCallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1017
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/android/phone/MiuiCallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_3
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1021
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 1022
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/android/phone/MiuiCallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_4
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v3, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/android/phone/MiuiCallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateForPostDialCharProcessed(Lcom/android/internal/telephony/Connection;)V
    .locals 10
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 776
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 777
    .local v1, call:Lcom/android/internal/telephony/Call;
    :goto_0
    if-eqz v1, :cond_0

    .line 778
    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 779
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 792
    :cond_0
    :goto_1
    return-void

    .line 776
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 781
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    :cond_2
    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 782
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 783
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v2}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    move v3, v4

    .line 784
    .local v3, isFgCallFirst:Z
    :goto_2
    if-eqz v3, :cond_3

    if-eq v1, v2, :cond_4

    :cond_3
    if-nez v3, :cond_6

    if-ne v1, v0, :cond_6

    .line 785
    .local v4, isFirst:Z
    :cond_4
    :goto_3
    if-eqz v4, :cond_7

    .line 786
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mFirstPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #isFgCallFirst:Z
    .end local v4           #isFirst:Z
    :cond_5
    move v3, v5

    .line 783
    goto :goto_2

    .restart local v3       #isFgCallFirst:Z
    :cond_6
    move v4, v5

    .line 784
    goto :goto_3

    .line 788
    .restart local v4       #isFirst:Z
    :cond_7
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mSecondPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/phone/MiuiCallCard;->getCallCardInfo(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCallCard$CallCardInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/MiuiCallCard$CallCardInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/phone/MiuiCallCard;->updatePhoneNumberField(Lcom/android/internal/telephony/Call;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateLockScreenWallpaper()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard;->mLockScreenWallpaper:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/MiuiCallCard;->mApplication:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lmiui/content/res/ThemeResources;->getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 13
    .parameter "cm"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x3

    .line 312
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 313
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 314
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 317
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v2, 0x0

    .line 318
    .local v2, firstCall:Lcom/android/internal/telephony/Call;
    const/4 v4, 0x0

    .line 320
    .local v4, secondCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_2

    .line 329
    iput v5, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 330
    move-object v2, v3

    .line 382
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->updateCallCard()V

    .line 384
    iget v7, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    packed-switch v7, :pswitch_data_0

    .line 395
    invoke-direct {p0}, Lcom/android/phone/MiuiCallCard;->updateNoCall()V

    .line 402
    :goto_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    if-eq v5, v11, :cond_1

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v12, :cond_9

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 407
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mCallCard:Landroid/widget/LinearLayout;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 412
    :goto_2
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    .line 413
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithPhoto:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 418
    :goto_3
    iget v5, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    if-ne v5, v11, :cond_b

    .line 419
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/phone/MiuiCallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 420
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mSecondName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/phone/MiuiCallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 424
    :goto_4
    return-void

    .line 332
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    .line 343
    iput v11, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 344
    invoke-static {v1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v7

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 345
    move-object v2, v1

    .line 346
    move-object v4, v0

    goto/16 :goto_0

    .line 348
    :cond_3
    move-object v2, v0

    .line 349
    move-object v4, v1

    goto/16 :goto_0

    .line 352
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_7

    .line 354
    :cond_5
    iput v12, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 355
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_6

    move-object v2, v1

    .line 356
    :goto_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v12, :cond_0

    invoke-static {v2}, Lcom/android/phone/MiuiExtraConnectionData;->getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;

    move-result-object v7

    sget-object v8, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    if-ne v7, v8, :cond_0

    .line 358
    iput v11, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    .line 359
    invoke-static {v2}, Lcom/android/phone/MiuiCdmaSecondCall;->getInstance(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCdmaSecondCall;

    move-result-object v4

    .line 360
    move-object v1, v4

    goto/16 :goto_0

    :cond_6
    move-object v2, v0

    .line 355
    goto :goto_5

    .line 378
    :cond_7
    iput v6, p0, Lcom/android/phone/MiuiCallCard;->mState:I

    goto/16 :goto_0

    .line 386
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/phone/MiuiCallCard;->updateRingingCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 389
    :pswitch_1
    if-ne v2, v1, :cond_8

    :goto_6
    invoke-direct {p0, v2, v4, v5}, Lcom/android/phone/MiuiCallCard;->updateDoubleCalls(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Z)V

    goto/16 :goto_1

    :cond_8
    move v5, v6

    goto :goto_6

    .line 392
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/phone/MiuiCallCard;->updateSingleCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 409
    :cond_9
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mCallCard:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_2

    .line 415
    :cond_a
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mTelocation:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/phone/MiuiCallCard;->mTelocationMaxWidthWithoutPhoto:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 422
    :cond_b
    iget-object v5, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/MiuiCallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/phone/MiuiCallCard;->adaptiveTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
