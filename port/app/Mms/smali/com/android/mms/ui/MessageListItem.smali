.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListItem$Style;,
        Lcom/android/mms/ui/MessageListItem$UriInfo;
    }
.end annotation


# instance fields
.field private mAttachmentAudio:Landroid/widget/ImageView;

.field private mAttachmentCard:Landroid/widget/ImageView;

.field private mAttachmentDefault:Landroid/widget/ImageView;

.field private mAttachmentPadding:Landroid/view/View;

.field private mAttachmentPic:Landroid/widget/ImageView;

.field private mAttachmentPin:Landroid/widget/ImageView;

.field private mAttachmentVideo:Landroid/widget/ImageView;

.field private mBodyLinearLayout:Landroid/widget/LinearLayout;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mDateTextView:Landroid/widget/TextView;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDeliverStatus:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadView:Landroid/view/View;

.field private mDownloadingLabel:Landroid/view/View;

.field private mEditMode:Z

.field private mFavouriteMark:Landroid/widget/ImageView;

.field private mGroupSendCancelButton:Landroid/widget/Button;

.field private mGroupSendCountTextView:Landroid/widget/TextView;

.field private mGroupSendFailedButton:Landroid/widget/Button;

.field private mGroupSendFailedRoot:Landroid/view/View;

.field private mGroupSendFailedTitle:Landroid/widget/TextView;

.field private mGroupSendIcon:Landroid/widget/ImageView;

.field private mGroupSendToTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mMaxAttachmentPicWidth:I

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mMessageItemLayout:Landroid/view/View;

.field private mMessageItemView:Landroid/view/View;

.field private mMmsBubbleImageWidth:I

.field private mMmsDownloadPadding:Landroid/view/View;

.field private mMmsPaddingHeight:I

.field private mResentButton:Landroid/widget/Button;

.field private mSenderTextView:Landroid/widget/TextView;

.field mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

.field private mTimedMsgIndicator:Landroid/widget/Button;

.field private mTimedMsgPadding:Landroid/view/View;

.field private mTitlePanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 863
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x1030046

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mTextSmallSpan:Landroid/text/style/TextAppearanceSpan;

    .line 866
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 170
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 173
    .local v0, color:I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 175
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsPaddingHeight:I

    .line 177
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsBubbleImageWidth:I

    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListItem;->mMaxAttachmentPicWidth:I

    .line 181
    return-void
.end method

.method private ViewMmsMessageAttachment()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Lcom/android/mms/ui/SimplePduDoc;)V

    .line 904
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/ContactMessage$ContactRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->ViewMmsMessageAttachment()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->startIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private bindBackground(Lcom/android/mms/ui/MessageItem;ZZ)V
    .locals 2
    .parameter "msgItem"
    .parameter "isEditMode"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    .line 395
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    :pswitch_0
    return-void

    .line 400
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 405
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 408
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 414
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 417
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 420
    :pswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 426
    :pswitch_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 412
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private bindBodyTextForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x0

    .line 606
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, formattedMessage:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 610
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSendingBodyInGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 634
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 638
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 639
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBubbleLayoutStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 640
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isMultiSlideMms()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 641
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsPaddingHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 642
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 643
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 649
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v1

    if-eqz v1, :cond_7

    .line 651
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->getBubbleBodyTextMaxWidth()I

    move-result v2

    iget v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsBubbleImageWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 656
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 657
    :cond_3
    return-void

    .line 618
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 619
    if-nez v0, :cond_0

    .line 620
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContactMessage()Lcom/android/mms/model/ContactMessage;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 621
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindContactMesssage(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 624
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 631
    :goto_3
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 628
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3

    .line 645
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 646
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 653
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->getBubbleBodyTextMaxWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2
.end method

.method private bindBodyTextForNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBubbleLayoutStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->getBubbleBodyTextMaxWidth()I

    move-result v2

    iget v3, p0, Lcom/android/mms/ui/MessageListItem;->mMmsBubbleImageWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 278
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v2

    add-int/lit16 v2, v2, 0x3ff

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getExpireTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, msgSizeText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getHighlight()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTextContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    :cond_1
    return-void
.end method

.method private bindBookmark(Lcom/android/mms/ui/MessageItem;)V
    .locals 1
    .parameter "msgItem"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindMms(Lcom/android/mms/ui/MessageItem;)V

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindTimestamp(Lcom/android/mms/ui/MessageItem;)V

    .line 272
    return-void
.end method

.method private bindCheckStatus(Lcom/android/mms/ui/MessageItem;ZZ)V
    .locals 3
    .parameter "msgItem"
    .parameter "isEditMode"
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 387
    :goto_0
    if-eqz p3, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 392
    :goto_1
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private bindCommonIndicators(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "msgItem"

    .prologue
    .line 1195
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindTimestamp(Lcom/android/mms/ui/MessageItem;)V

    .line 1196
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindDeliveryInfo(Lcom/android/mms/ui/MessageItem;)V

    .line 1197
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindResentButton(Lcom/android/mms/ui/MessageItem;)V

    .line 1198
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindFavouriteMark(Lcom/android/mms/ui/MessageItem;)V

    .line 1199
    return-void
.end method

.method private bindContactMesssage(Lcom/android/mms/ui/MessageItem;)Z
    .locals 12
    .parameter "msgItem"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 660
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    if-nez v10, :cond_0

    .line 706
    :goto_0
    return v8

    .line 663
    :cond_0
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 665
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContactMessage()Lcom/android/mms/model/ContactMessage;

    move-result-object v0

    .line 666
    .local v0, contactMessage:Lcom/android/mms/model/ContactMessage;
    if-eqz v0, :cond_3

    .line 667
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 668
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->split()Ljava/util/ArrayList;

    move-result-object v6

    .line 669
    .local v6, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .line 670
    .local v2, first:Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 671
    .local v5, part:Ljava/lang/Object;
    new-instance v7, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 672
    .local v7, tv:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->getBubbleBodyTextMaxWidth()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 673
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0b

    invoke-virtual {v10, v11, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 674
    .local v4, multiple:F
    const/4 v10, 0x0

    invoke-virtual {v7, v10, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 675
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 690
    :goto_2
    :pswitch_0
    instance-of v10, v5, Lcom/android/mms/model/ContactMessage$ContactRecord;

    if-nez v10, :cond_1

    .line 691
    const/16 v10, 0xf

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 692
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 694
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    if-nez v2, :cond_2

    .line 697
    new-instance v1, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 698
    .local v1, devider:Landroid/widget/ImageView;
    const v10, 0x7f020019

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 699
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 701
    .end local v1           #devider:Landroid/widget/ImageView;
    :cond_2
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 702
    const/4 v2, 0x0

    .line 703
    goto :goto_1

    .line 680
    :pswitch_1
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v11, 0x7f0e001f

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 685
    :pswitch_2
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v11, 0x7f0e001e

    invoke-virtual {v7, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #multiple:F
    .end local v5           #part:Ljava/lang/Object;
    .end local v6           #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_3
    move v8, v9

    .line 706
    goto/16 :goto_0

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private bindDeliveryInfo(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0a0136

    const v7, 0x7f0a0134

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 1232
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    const/4 v0, 0x0

    .line 1236
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1237
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1238
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1240
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1241
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1243
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0135

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1244
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1248
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliverReportMode()I

    move-result v1

    .line 1249
    if-eqz v1, :cond_0

    .line 1250
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_7

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1252
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_6

    .line 1253
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1277
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v1, :cond_b

    .line 1278
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1254
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_5

    .line 1255
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1257
    :cond_7
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1258
    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1260
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v2, v3, :cond_9

    .line 1261
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1268
    :cond_8
    :goto_2
    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_5

    .line 1270
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadReport()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1272
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1262
    :cond_9
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->REJECTED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v2, v3, :cond_a

    .line 1263
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0138

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1264
    :cond_a
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    if-ne v2, v4, :cond_8

    .line 1265
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1279
    :cond_b
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1280
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1282
    :cond_c
    if-eqz v0, :cond_d

    .line 1283
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1284
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1286
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private bindDownloadButtonForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    const/16 v1, 0x8

    .line 737
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 743
    :cond_1
    return-void
.end method

.method private bindDownloadButtonForNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 299
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v0

    .line 307
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 316
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 319
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 309
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
    .end packed-switch
.end method

.method private bindFavouriteMark(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindGroupMessageCancelButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const/4 v1, 0x0

    .line 549
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v2

    .line 550
    .local v2, thread_id:J
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v4

    .line 551
    .local v4, date:J
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 552
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 573
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 556
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;JJ)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private bindGroupMessageFailed(Lcom/android/mms/ui/MessageItem;)V
    .locals 6
    .parameter "msgItem"

    .prologue
    const/4 v5, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0a013c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageFailedItems(Lcom/android/mms/ui/MessageItem;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageSendFailedButton(Lcom/android/mms/ui/MessageItem;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageCancelButton(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindGroupMessageFailedItems(Lcom/android/mms/ui/MessageItem;)V
    .locals 13
    .parameter "msgItem"

    .prologue
    const/4 v12, 0x0

    .line 486
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v3

    .line 488
    .local v3, failedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem$FailedItem;>;"
    const v9, 0x7f10007e

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 489
    .local v8, vg:Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 490
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageItem$FailedItem;

    .line 491
    .local v2, failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;
    iget-object v9, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v10, 0x7f040024

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/mms/ui/MessageListItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 492
    .local v7, v:Landroid/view/View;
    const v9, 0x7f100079

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 493
    .local v5, nameView:Landroid/widget/TextView;
    const v9, 0x7f10007a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 494
    .local v6, numberView:Landroid/widget/TextView;
    const v9, 0x7f10007b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 495
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 496
    iget-boolean v9, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v9, :cond_0

    .line 497
    invoke-virtual {v0, v12}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 514
    :goto_1
    iget-object v9, v2, Lcom/android/mms/ui/MessageItem$FailedItem;->number:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 515
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 518
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 499
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 500
    new-instance v9, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v9, p0, p1, v2}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageItem$FailedItem;)V

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 520
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 524
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;
    .end local v5           #nameView:Landroid/widget/TextView;
    .end local v6           #numberView:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private bindGroupMessageSendFailedButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0a013a

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->resendMsgInGroup()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 530
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 545
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private bindGroupSendCount(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter "msgItem"

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x0

    .line 433
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->sentMsgInGroup()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 442
    .local v0, current:I
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->totalMsgInGroup()I

    move-result v1

    .line 443
    .local v1, total:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0133

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 455
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 460
    .end local v0           #current:I
    .end local v1           #total:I
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 463
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindMms(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 710
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    .line 711
    .local v0, doc:Lcom/android/mms/ui/SimplePduDoc;
    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SimplePduDoc;->getPageAppearanceType(I)I

    move-result v1

    .line 713
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 728
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->setDefaultAttachment()V

    .line 734
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 715
    .restart local v1       #type:I
    :pswitch_0
    invoke-virtual {v0, v4, v1}, Lcom/android/mms/ui/SimplePduDoc;->getPagePartUri(II)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setAudio(Landroid/net/Uri;)V

    goto :goto_0

    .line 718
    :pswitch_1
    iget v2, p0, Lcom/android/mms/ui/MessageListItem;->mMaxAttachmentPicWidth:I

    iget v3, p0, Lcom/android/mms/ui/MessageListItem;->mMaxAttachmentPicWidth:I

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/mms/ui/SimplePduDoc;->getPageImage(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 721
    :pswitch_2
    invoke-virtual {v0, v4, v1}, Lcom/android/mms/ui/SimplePduDoc;->getPagePartUri(II)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setVideo(Landroid/net/Uri;)V

    goto :goto_0

    .line 724
    :pswitch_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setCard(Landroid/net/Uri;)V

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private bindNonNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 1
    .parameter "msgItem"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindDownloadButtonForNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindSendToTitle(Lcom/android/mms/ui/MessageItem;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupSendCount(Lcom/android/mms/ui/MessageItem;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindGroupMessageFailed(Lcom/android/mms/ui/MessageItem;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindTimedMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 261
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindMms(Lcom/android/mms/ui/MessageItem;)V

    .line 264
    :cond_0
    return-void
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "msgItem"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBodyTextForNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindDownloadButtonForNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindTimedMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 247
    return-void
.end method

.method private bindResentButton(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    const/4 v1, 0x0

    .line 1202
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1205
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1208
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1211
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1215
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$18;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListItem$18;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1227
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindSendToTitle(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter "msgItem"

    .prologue
    const v4, 0x7f0a0131

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 576
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 586
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0132

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->totalMsgInGroup()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->failedMsgInGroup()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 595
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReferenceGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    const v1, 0x7f0a01a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 597
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private bindTimedMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReferenceGroup()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 367
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private bindTimestamp(Lcom/android/mms/ui/MessageItem;)V
    .locals 7
    .parameter

    .prologue
    const v5, 0x7f0a01a3

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1295
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isListLayoutStyle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1296
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getRelativeTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1297
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1301
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1302
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1303
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1310
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    :cond_4
    :goto_1
    return-void

    .line 1305
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1306
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1312
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBubbleLayoutStyle()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1313
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getStyledTimeStamp()Ljava/lang/String;

    move-result-object v0

    .line 1314
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1315
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1318
    :cond_7
    if-eqz v0, :cond_9

    .line 1319
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 1320
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTitlePanel:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1323
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTitlePanel:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1326
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTitlePanel:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1327
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTitlePanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1331
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getRelativeTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1333
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 1334
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v3, 0x7f0a015e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getContact()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1338
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    if-nez v0, :cond_c

    const-string v0, ""

    :cond_c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private drawBackground(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter

    .prologue
    .line 1159
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1187
    :goto_0
    :pswitch_0
    return-void

    .line 1161
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1164
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1167
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1170
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1177
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 872
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 873
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 874
    :goto_0
    if-eqz v0, :cond_0

    .line 875
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0028

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p2, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 878
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 880
    if-eqz p4, :cond_3

    const-string v4, "text/html"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 881
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 882
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 891
    :cond_1
    :goto_1
    if-eqz p3, :cond_5

    .line 892
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 893
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 894
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    move v0, v2

    .line 873
    goto :goto_0

    .line 884
    :cond_3
    if-eqz v0, :cond_4

    .line 885
    const-string v0, " - "

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 887
    :cond_4
    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 897
    :cond_5
    return-object v3
.end method

.method private getBubbleBodyTextMaxWidth()I
    .locals 4

    .prologue
    .line 293
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 294
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f3851ec

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 295
    .local v0, maxWidth:I
    return v0
.end method

.method private getUriInfo(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$UriInfo;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1009
    new-instance v1, Lcom/android/mms/ui/MessageListItem$UriInfo;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/mms/ui/MessageListItem$UriInfo;-><init>(Lcom/android/mms/ui/MessageListItem$1;)V

    .line 1010
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->uri:Landroid/net/Uri;

    .line 1012
    const-string v0, ""

    .line 1013
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1014
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1015
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1018
    :cond_0
    const-string v3, "tel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1019
    iput v4, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 1020
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1021
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1022
    iget-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1023
    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1025
    :cond_1
    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    .line 1026
    iget-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    .line 1046
    :goto_0
    return-object v1

    .line 1029
    :cond_2
    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 1031
    :cond_3
    const-string v3, "mailto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1032
    iput v5, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 1033
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1034
    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1035
    iput-object v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 1036
    :cond_4
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1038
    :cond_5
    const/4 v0, 0x2

    iput v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 1039
    iput-object p1, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1040
    iput-object p1, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 1042
    :cond_6
    const/4 v0, 0x3

    iput v0, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    .line 1043
    iput-object p1, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->content:Ljava/lang/String;

    .line 1044
    iput-object p1, v1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private hideMmsViewIfNeeded()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 811
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentCard:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 813
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_2
    return-void
.end method

.method private isMultiSlideMms()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->isSlideShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 925
    new-instance v1, Lcom/android/mms/ui/ContextMenuDialog;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/mms/ui/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    .line 927
    iget v0, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->scheme:I

    packed-switch v0, :pswitch_data_0

    .line 964
    const-string v0, "notes"

    .line 968
    :goto_0
    const v2, 0x7f0a0142

    new-instance v3, Lcom/android/mms/ui/MessageListItem$11;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$11;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 978
    iget-object v2, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->contact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    const v0, 0x7f0a0146

    new-instance v2, Lcom/android/mms/ui/MessageListItem$12;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageListItem$12;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 1004
    :goto_1
    iget-object v0, p1, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v1}, Lcom/android/mms/ui/ContextMenuDialog;->show()V

    .line 1006
    return-void

    .line 929
    :pswitch_0
    const-string v0, "phone"

    .line 930
    const v2, 0x7f0a013e

    new-instance v3, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 936
    const v2, 0x7f0a013f

    new-instance v3, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 946
    :pswitch_1
    const-string v0, "email"

    .line 947
    const v2, 0x7f0a0141

    new-instance v3, Lcom/android/mms/ui/MessageListItem$9;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$9;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 955
    :pswitch_2
    const-string v0, "notes"

    .line 956
    const v2, 0x7f0a0140

    new-instance v3, Lcom/android/mms/ui/MessageListItem$10;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$10;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 985
    :cond_0
    const v2, 0x7f0a0144

    new-instance v3, Lcom/android/mms/ui/MessageListItem$13;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/mms/ui/MessageListItem$13;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 993
    const v2, 0x7f0a0145

    new-instance v3, Lcom/android/mms/ui/MessageListItem$14;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/mms/ui/MessageListItem$14;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    goto :goto_1

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private prepareStyle(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f10000c

    const/4 v1, 0x0

    .line 750
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 771
    :goto_0
    :pswitch_0
    const v0, 0x7f10000d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTitlePanel:Landroid/view/View;

    .line 772
    const v0, 0x7f10000f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSenderTextView:Landroid/widget/TextView;

    .line 773
    const v0, 0x7f10000e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateTextView:Landroid/widget/TextView;

    .line 774
    const v0, 0x7f100072

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 775
    const v0, 0x7f100073

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    .line 776
    const v0, 0x7f100075

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendToTextView:Landroid/widget/TextView;

    .line 777
    const v0, 0x7f100076

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCountTextView:Landroid/widget/TextView;

    .line 778
    const v0, 0x7f100077

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendIcon:Landroid/widget/ImageView;

    .line 779
    const v0, 0x7f10007c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedRoot:Landroid/view/View;

    .line 780
    const v0, 0x7f10007d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedTitle:Landroid/widget/TextView;

    .line 781
    const v0, 0x7f10007f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;

    .line 782
    const v0, 0x7f100080

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mGroupSendCancelButton:Landroid/widget/Button;

    .line 783
    const v0, 0x7f100065

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDeliverStatus:Landroid/widget/TextView;

    .line 784
    const v0, 0x7f100078

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mResentButton:Landroid/widget/Button;

    .line 785
    const v0, 0x7f100068

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadView:Landroid/view/View;

    .line 786
    const v0, 0x7f100069

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 787
    const v0, 0x7f10006a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/view/View;

    .line 788
    const v0, 0x7f10006b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFavouriteMark:Landroid/widget/ImageView;

    .line 789
    const v0, 0x7f10000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemView:Landroid/view/View;

    .line 790
    const v0, 0x7f100066

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItemLayout:Landroid/view/View;

    .line 791
    const v0, 0x1020001

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 793
    const v0, 0x7f10006c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    .line 794
    const v0, 0x7f10006e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    .line 795
    const v0, 0x7f10006f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    .line 796
    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentCard:Landroid/widget/ImageView;

    .line 797
    const v0, 0x7f100071

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    .line 799
    const v0, 0x7f10005c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgIndicator:Landroid/widget/Button;

    .line 801
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBubbleLayoutStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    const v0, 0x7f100067

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsDownloadPadding:Landroid/view/View;

    .line 803
    const v0, 0x7f100074

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mTimedMsgPadding:Landroid/view/View;

    .line 804
    const v0, 0x7f100090

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    .line 805
    const v0, 0x7f100070

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    .line 807
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawBackground(Lcom/android/mms/ui/MessageItem;)V

    .line 808
    return-void

    .line 754
    :pswitch_1
    const v0, 0x7f10008a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 758
    :pswitch_2
    const v0, 0x7f100087

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 761
    :pswitch_3
    const v0, 0x7f100088

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 764
    :pswitch_4
    const v0, 0x7f100089

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 767
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V
    .locals 2
    .parameter

    .prologue
    .line 918
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 919
    const-string v1, "vnd.android.cursor.dir/preview_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/mms/model/ContactParser;->putContactToIntent(Lcom/android/mms/model/ContactMessage$ContactRecord;Landroid/content/Intent;)Landroid/content/Intent;

    .line 921
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 922
    return-void
.end method

.method private startIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 907
    const-string v0, "com.android.browser.application_id"

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const/high16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "msgItem"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->prepareStyle(Lcom/android/mms/ui/MessageItem;)V

    .line 190
    return-void
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public onCheckStateChanged(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/ui/MessageListItem;->bindBackground(Lcom/android/mms/ui/MessageItem;ZZ)V

    .line 1051
    return-void
.end method

.method public onMessageListItemClick()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1054
    .line 1055
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    move-object v1, v0

    .line 1071
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1072
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v0

    .line 1073
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getTimedValue()J

    move-result-wide v2

    .line 1074
    iget-object v4, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 1075
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    .line 1077
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/mms/ui/MultipleRecipientsConversationDetailsActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1079
    const-string v7, "timestamp"

    invoke-virtual {v6, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1082
    const-string v0, "timed_value"

    invoke-virtual {v6, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1085
    const-string v0, "thread_id"

    invoke-virtual {v6, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1086
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1150
    :cond_0
    :goto_1
    return-void

    .line 1058
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 1059
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1060
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1061
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 1062
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_3
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 1063
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1059
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1067
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/text/style/URLSpan;

    .line 1068
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    move-object v1, v0

    goto/16 :goto_0

    .line 1091
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getContactMessage()Lcom/android/mms/model/ContactMessage;

    move-result-object v0

    .line 1092
    if-nez v0, :cond_6

    .line 1093
    array-length v3, v1

    if-nez v3, :cond_5

    .line 1094
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->ViewMmsMessageAttachment()V

    .line 1095
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/FestivalActivity;->checkAndCallFestival(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 1099
    :cond_5
    array-length v3, v1

    if-ne v3, v9, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1100
    aget-object v0, v1, v2

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->getUriInfo(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$UriInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->performUriOperation(Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    goto :goto_1

    .line 1103
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->count()I

    move-result v3

    if-ne v3, v9, :cond_8

    array-length v3, v1

    if-nez v3, :cond_8

    .line 1104
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1105
    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->getContactRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/ContactMessage$ContactRecord;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListItem;->previewContactFromMessage(Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    goto/16 :goto_1

    .line 1110
    :cond_8
    new-instance v3, Lcom/android/mms/ui/ContextMenuDialog;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/mms/ui/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    .line 1111
    if-eqz v0, :cond_9

    .line 1112
    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage;->getContactRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/ContactMessage$ContactRecord;

    .line 1113
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0147

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage$ContactRecord;->getPreviewString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1115
    new-instance v6, Lcom/android/mms/ui/MessageListItem$15;

    invoke-direct {v6, p0, v0}, Lcom/android/mms/ui/MessageListItem$15;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/model/ContactMessage$ContactRecord;)V

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1123
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1124
    :goto_5
    array-length v4, v1

    if-ge v2, v4, :cond_b

    .line 1125
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 1126
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1127
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageListItem;->getUriInfo(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$UriInfo;

    move-result-object v4

    .line 1129
    iget-object v5, v4, Lcom/android/mms/ui/MessageListItem$UriInfo;->title:Ljava/lang/String;

    new-instance v6, Lcom/android/mms/ui/MessageListItem$16;

    invoke-direct {v6, p0, v4}, Lcom/android/mms/ui/MessageListItem$16;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$UriInfo;)V

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1124
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1137
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1138
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;

    move-result-object v0

    .line 1139
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduDoc;->canShow()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1140
    const v0, 0x7f0a013d

    new-instance v1, Lcom/android/mms/ui/MessageListItem$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$17;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ContextMenuDialog;->addMenuItem(ILjava/lang/Runnable;)V

    .line 1148
    :cond_c
    const v0, 0x7f0a00f9

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ContextMenuDialog;->setTitle(I)V

    .line 1149
    invoke-virtual {v3}, Lcom/android/mms/ui/ContextMenuDialog;->show()V

    goto/16 :goto_1
.end method

.method public rebind(Lcom/android/mms/ui/MessageItem;ZZ)V
    .locals 1
    .parameter "msgItem"
    .parameter "isEditMode"
    .parameter "checked"

    .prologue
    .line 200
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageListItem;->mEditMode:Z

    .line 201
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 203
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded()V

    .line 205
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isBookmarkLayoutStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindBookmark(Lcom/android/mms/ui/MessageItem;)V

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 215
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindNonNotifInd(Lcom/android/mms/ui/MessageItem;)V

    .line 218
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindCommonIndicators(Lcom/android/mms/ui/MessageItem;)V

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindCheckStatus(Lcom/android/mms/ui/MessageItem;ZZ)V

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindBackground(Lcom/android/mms/ui/MessageItem;ZZ)V

    goto :goto_0

    .line 212
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_1

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
    .end packed-switch
.end method

.method public setAudio(Landroid/net/Uri;)V
    .locals 2
    .parameter "audio"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentAudio:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 832
    return-void
.end method

.method public setCard(Landroid/net/Uri;)V
    .locals 2
    .parameter "card"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentCard:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    return-void
.end method

.method public setDefaultAttachment()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentDefault:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 861
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/mms/ui/MessageUtils;->setAttachmentImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 844
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPin:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    const-string v1, "MessageListItem"

    const-string v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 236
    return-void
.end method

.method public setVideo(Landroid/net/Uri;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentPadding:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachmentVideo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1348
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 228
    return-void
.end method
