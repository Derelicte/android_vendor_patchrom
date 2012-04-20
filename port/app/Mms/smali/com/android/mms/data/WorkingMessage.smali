.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$SendMessageTask;,
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

.field private static final SMS_DRAFT_PROJECTION:[Ljava/lang/String;

.field private static sMmsEnabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDiscarded:Z

.field private volatile mHasMmsDraft:Z

.field private volatile mHasSmsDraft:Z

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private mTimeToSend:J

.field private mWorkingRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 159
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "m_size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    .line 1462
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sub"

    aput-object v1, v0, v4

    const-string v1, "sub_cs"

    aput-object v1, v0, v5

    const-string v1, "date_full"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "timed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 1619
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "timed"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    .line 214
    invoke-interface {p1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->getHostedActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 215
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 216
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 217
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->markMmsMessageWithError(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/WorkingMessage;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/data/WorkingMessage;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/data/WorkingMessage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z
    .locals 9
    .parameter "conv"
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1165
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1166
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, dests:[Ljava/lang/String;
    array-length v2, v0

    .line 1168
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1169
    aget-object v7, v0, v1

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v0, v1

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1170
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1171
    .local v3, mtext:Ljava/lang/String;
    invoke-static {v3, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .line 1172
    .local v4, params:[I
    aget v7, v4, v6

    if-le v7, v5, :cond_1

    .line 1173
    invoke-direct {p0, v5, v5, v5}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1174
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1175
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 1181
    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mtext:Ljava/lang/String;
    .end local v4           #params:[I
    :goto_1
    return v5

    .line 1168
    .restart local v0       #dests:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2
    move v5, v6

    .line 1181
    goto :goto_1
.end method

.method private appendMedia(ILandroid/net/Uri;)V
    .locals 9
    .parameter "type"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 592
    if-nez p1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    const/4 v0, 0x1

    .line 602
    .local v0, addNewSlide:Z
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_2

    .line 604
    const/4 v0, 0x0

    .line 606
    :cond_2
    if-eqz v0, :cond_3

    .line 607
    new-instance v3, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v3, v4, v5}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 608
    .local v3, slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    .end local v3           #slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 615
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-ne p1, v6, :cond_5

    .line 616
    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v4, p2, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 626
    .local v1, media:Lcom/android/mms/model/MediaModel;
    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 630
    if-eq p1, v7, :cond_4

    if-ne p1, v8, :cond_0

    .line 631
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    goto :goto_0

    .line 617
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    if-ne p1, v7, :cond_6

    .line 618
    new-instance v1, Lcom/android/mms/model/VideoModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v4, p2, v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 619
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    if-ne p1, v8, :cond_7

    .line 620
    new-instance v1, Lcom/android/mms/model/AudioModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 622
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeMedia type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1735
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    const-string v0, "asyncDelete %s where %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1738
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1743
    return-void
.end method

.method private asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 5
    .parameter "conv"

    .prologue
    .line 1762
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 1764
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1765
    .local v0, threadId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 1766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1769
    .end local v2           #where:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1551
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1552
    const-string v0, "asyncUpdateDraftMmsMessage conv=%s mMessageUri=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1555
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1593
    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 2
    .parameter "conv"
    .parameter "contents"

    .prologue
    .line 1694
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1706
    return-void
.end method

.method private changeMedia(ILandroid/net/Uri;)V
    .locals 6
    .parameter "type"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 542
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 545
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-nez v1, :cond_1

    .line 546
    const-string v2, "Mms"

    const-string v3, "changeMedia: no slides!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 552
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 553
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 558
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 561
    if-eqz p1, :cond_0

    .line 566
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 567
    new-instance v0, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v0, v2, p2, v3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 577
    .local v0, media:Lcom/android/mms/model/MediaModel;
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 581
    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_0

    .line 582
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    goto :goto_0

    .line 568
    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    :cond_3
    if-ne p1, v4, :cond_4

    .line 569
    new-instance v0, Lcom/android/mms/model/VideoModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v0, v2, p2, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 570
    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    :cond_4
    if-ne p1, v5, :cond_5

    .line 571
    new-instance v0, Lcom/android/mms/model/AudioModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_1

    .line 573
    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeMedia type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private correctAttachmentState(Z)V
    .locals 6
    .parameter "notify"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 258
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 262
    .local v1, slideCount:I
    if-nez v1, :cond_1

    .line 263
    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 279
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    invoke-direct {p0, v3, v2, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 280
    return-void

    .line 264
    :cond_1
    if-le v1, v5, :cond_2

    .line 265
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 268
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 271
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 272
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 273
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 274
    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 4
    .parameter "persister"
    .parameter "sendReq"
    .parameter "slideshow"

    .prologue
    .line 1540
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1541
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1542
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 1543
    .local v2, res:Landroid/net/Uri;
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #res:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    .local v0, e:Lcom/google/android/mms/MmsException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .parameter "listener"

    .prologue
    .line 226
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 227
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5
    .parameter

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1759
    return-void
.end method

.method private ensureSlideshow()V
    .locals 3

    .prologue
    .line 526
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 531
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 532
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 534
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 8
    .parameter "listener"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    invoke-interface {p0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->getHostedActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 238
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    const-string v4, "load: moving %s to drafts"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_0
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1, v4}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 249
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_1
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 250
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v1, p1}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    .end local v1           #msg:Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-object v1

    .line 243
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Can\'t move %s to drafts"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 245
    goto :goto_0

    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v1       #msg:Lcom/android/mms/data/WorkingMessage;
    :cond_2
    move-object v1, v3

    .line 254
    goto :goto_0
.end method

.method public static loadDraft(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;
    .locals 2
    .parameter "listener"
    .parameter "conv"

    .prologue
    .line 306
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 307
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v0, p1}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    .end local v0           #msg:Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-object v0

    .restart local v0       #msg:Lcom/android/mms/data/WorkingMessage;
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    goto :goto_0
.end method

.method private loadFromConversation(Lcom/android/mms/data/Conversation;)Z
    .locals 8
    .parameter "conv"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 315
    const-string v6, "Mms:app"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "loadFromConversation %s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 318
    .local v1, threadId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gtz v6, :cond_2

    .line 345
    :cond_1
    :goto_0
    return v4

    .line 323
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 324
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 325
    iput-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    move v4, v5

    .line 326
    goto :goto_0

    .line 330
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v6, p1, v0}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v3

    .line 332
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 333
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 339
    :cond_4
    iput-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 340
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->calcLengthRequiresMms()Z

    move-result v6

    invoke-virtual {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    move v4, v5

    .line 341
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "loadFromUri %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 294
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 295
    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 297
    :goto_0
    return v1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Couldn\'t load URI %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 288
    goto :goto_0
.end method

.method private static makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 7
    .parameter "conv"
    .parameter "subject"

    .prologue
    .line 1520
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, dests:[Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1523
    .local v2, req:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 1524
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 1525
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1528
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1529
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1532
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 1534
    return-object v2
.end method

.method private markMmsMessageWithError(Landroid/net/Uri;)V
    .locals 10
    .parameter "mmsUri"

    .prologue
    .line 1441
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    .line 1444
    .local v9, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v0, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, p1, v0}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1447
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1448
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1449
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1450
    .local v7, msgId:J
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v7           #msgId:J
    .end local v9           #p:Lcom/google/android/mms/pdu/PduPersister;
    :goto_0
    return-void

    .line 1453
    :catch_0
    move-exception v6

    .line 1456
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move message to outbox and mark as error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private prepareForSave(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 744
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 746
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 750
    :cond_0
    return-void
.end method

.method private readDraftMmsMessage(Landroid/content/Context;Lcom/android/mms/data/Conversation;Ljava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "conv"
    .parameter "sb"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1477
    const-string v0, "Mms:app"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readDraftMmsMessage conv: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1481
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1483
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1484
    .local v4, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1489
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 1491
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1492
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1494
    .local v9, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-static {v7, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v8

    .line 1496
    .local v8, subject:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_1

    .line 1497
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    .line 1499
    :cond_1
    if-eqz v8, :cond_2

    .line 1500
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    :cond_2
    const-string v0, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1503
    const-string v0, "readDraftMmsMessage uri: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1512
    .end local v8           #subject:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :goto_0
    return-object v9

    .line 1508
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v9, v5

    .line 1512
    goto :goto_0

    .line 1508
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 12
    .parameter

    .prologue
    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1633
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1634
    const-string v2, "Mms:app"

    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1635
    const-string v2, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDraftSmsMessage conv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    cmp-long v2, v0, v10

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1639
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 1680
    :cond_2
    :goto_0
    return-void

    .line 1643
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1644
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 1646
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v4, "type=3"

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1649
    if-eqz v1, :cond_8

    .line 1651
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1652
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 1653
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-lez v0, :cond_5

    .line 1654
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move v0, v7

    .line 1661
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1668
    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1669
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1675
    invoke-virtual {p0, p1, v7}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 1677
    :cond_4
    const-string v0, "Mms:app"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1678
    const-string v0, "readDraftSmsMessage haveDraft: "

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1656
    :cond_5
    const-wide/16 v2, 0x0

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1661
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    move v7, v8

    .line 1678
    goto :goto_4

    :cond_7
    move v0, v8

    goto :goto_2

    :cond_8
    move v0, v8

    goto :goto_3
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 733
    :cond_0
    return-void
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 1054
    if-nez p0, :cond_0

    .line 1055
    const-string v1, "<none>"

    .line 1070
    :goto_0
    return-object v1

    .line 1057
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1058
    .local v0, sb:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1059
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1061
    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1063
    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 1065
    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 1067
    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncTextFromSlideshow()V
    .locals 3

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 719
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private syncTextToSlideshow()V
    .locals 6

    .prologue
    .line 691
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 696
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-nez v2, :cond_2

    .line 698
    new-instance v1, Lcom/android/mms/model/TextModel;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const-string v3, "text/plain"

    const-string v4, "text_0.txt"

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 700
    .local v1, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 705
    :goto_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 703
    .end local v1           #text:Lcom/android/mms/model/TextModel;
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .restart local v1       #text:Lcom/android/mms/model/TextModel;
    goto :goto_1
.end method

.method private updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1597
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    const-string v0, "updateDraftMmsMessage uri=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1600
    :cond_0
    if-nez p1, :cond_1

    .line 1601
    const-string v0, "WorkingMessage"

    const-string v1, "updateDraftMmsMessage null uri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :goto_0
    return-void

    .line 1604
    :cond_1
    invoke-virtual {p2, p1, p4}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1605
    invoke-virtual {p3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 1608
    :try_start_0
    invoke-virtual {p2, p1, v6}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1613
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->setMmsSendTime(Landroid/content/Context;Landroid/net/Uri;JJ)V

    .line 1614
    invoke-virtual {p3, v6}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 1709
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1710
    const-string v2, "Mms:app"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1711
    const-string v2, "updateDraftSmsMessage tid=%d, contents=\"%s\""

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1715
    :cond_0
    cmp-long v2, v0, v7

    if-gtz v2, :cond_1

    .line 1732
    :goto_0
    return-void

    .line 1719
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1720
    const-string v3, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1721
    const-string v0, "body"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const-string v0, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1723
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_2

    .line 1724
    const-string v0, "timed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1725
    const-string v0, "date"

    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1730
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v3, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1731
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    goto :goto_0

    .line 1727
    :cond_2
    const-string v0, "timed"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1728
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method private updateState(IZZ)V
    .locals 7
    .parameter "state"
    .parameter "on"
    .parameter "notify"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1081
    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v1, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1088
    .local v0, oldState:I
    if-eqz p2, :cond_4

    .line 1089
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1096
    :goto_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    and-int/lit8 v1, v0, -0x11

    if-lez v1, :cond_2

    .line 1097
    iput v4, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1102
    :cond_2
    if-eqz p3, :cond_3

    .line 1103
    if-nez v0, :cond_5

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v1, :cond_5

    .line 1104
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    .line 1110
    :cond_3
    :goto_2
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v0, v1, :cond_0

    .line 1111
    const-string v1, "Mms:app"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "updateState: %s%s = %s"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz p2, :cond_6

    const-string v1, "+"

    :goto_3
    aput-object v1, v3, v4

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1091
    :cond_4
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_1

    .line 1105
    :cond_5
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_3

    .line 1106
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_2

    .line 1111
    :cond_6
    const-string v1, "-"

    goto :goto_3
.end method


# virtual methods
.method public asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter

    .prologue
    .line 1746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    .line 1748
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 1749
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1750
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type=3"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1753
    :cond_0
    return-void
.end method

.method public calcLengthRequiresMms()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 459
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMultipartSmsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v1

    .line 468
    .local v1, params:[I
    aget v0, v1, v2

    .line 470
    .local v0, msgCount:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 471
    const/4 v2, 0x1

    .line 475
    .end local v0           #msgCount:I
    .end local v1           #params:[I
    :cond_0
    return v2
.end method

.method public clearConversation(Lcom/android/mms/data/Conversation;Z)V
    .locals 1
    .parameter "conv"
    .parameter "resetThreadId"

    .prologue
    .line 1683
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1685
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1687
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1690
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1691
    return-void
.end method

.method public declared-synchronized discard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 891
    monitor-enter p0

    :try_start_0
    const-string v0, "[WorkingMessage] discard"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 909
    :goto_0
    monitor-exit p0

    return-void

    .line 899
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 902
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 905
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeToSend()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    return-wide v0
.end method

.method public getWorkingRecipients()Ljava/lang/String;
    .locals 3

    .prologue
    .line 776
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-nez v1, :cond_0

    .line 777
    const/4 v1, 0x0

    .line 780
    :goto_0
    return-object v1

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 780
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSlideshow()Z
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorthSaving(Ljava/lang/String;)Z
    .locals 2
    .parameter "signature"

    .prologue
    const/4 v0, 0x1

    .line 491
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAttachment(Z)V
    .locals 3
    .parameter "notify"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 373
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 374
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 375
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 377
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 380
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 381
    if-eqz p1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 387
    :cond_1
    return-void
.end method

.method public removeFakeMmsForDraft()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 787
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 788
    return-void
.end method

.method public requiresMms()Z
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 5
    .parameter "notify"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 798
    iget-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v2, :cond_0

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveAsMms mDiscarded: true mConversation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returning NULL uri and bailing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    const/4 v2, 0x0

    .line 835
    :goto_0
    return-object v2

    .line 810
    :cond_0
    const/16 v2, 0x10

    invoke-direct {p0, v2, v3, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 813
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 817
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 818
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 819
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 821
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 822
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v1

    .line 826
    .local v1, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 827
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 831
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 835
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    .line 829
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 833
    .end local v0           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v1           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    throw v2
.end method

.method public saveDraft(Z)V
    .locals 6
    .parameter "isStopping"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 844
    iget-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v1, :cond_0

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDraft mDiscarded: true mConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skipping saving draft and bailing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_1

    .line 852
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "saveDraft() called with no conversation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 856
    :cond_1
    const-string v1, "saveDraft for mConversation %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    invoke-direct {p0, v5}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 863
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;Z)V

    .line 864
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 886
    :goto_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v4}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    goto :goto_0

    .line 866
    :cond_2
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 875
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    .line 876
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    goto :goto_1

    .line 882
    :cond_3
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    goto :goto_1
.end method

.method public send(Ljava/lang/String;)V
    .locals 11
    .parameter "recipientsInUI"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1126
    const-string v6, "Mms:transaction"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1127
    const-string v6, "send"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    :cond_0
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 1131
    .local v4, origThreadId:J
    invoke-direct {p0, v10}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 1134
    invoke-direct {p0, v10}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1137
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1138
    .local v0, conv:Lcom/android/mms/data/Conversation;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, msgTxt:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v0, v3}, Lcom/android/mms/data/WorkingMessage;->addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1143
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1144
    const-string v1, "WorkingMessage.send MMS sending failure. mms_config.xml is missing uaProfUrl setting.  uaProfUrl is required for MMS service, but can be absent for SMS."

    .line 1147
    .local v1, err:Ljava/lang/String;
    new-instance v2, Lcom/android/mms/ContentRestrictionException;

    invoke-direct {v2, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v6, "WorkingMessage"

    invoke-static {v6, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1150
    throw v2

    .line 1152
    .end local v1           #err:Ljava/lang/String;
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :cond_2
    new-instance v6, Lcom/android/mms/data/WorkingMessage$SendMessageTask;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v6, p0, v0, v7, v8}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    new-array v7, v9, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1158
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 1161
    iput-boolean v10, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1162
    return-void

    .line 1154
    :cond_3
    new-instance v6, Lcom/android/mms/data/WorkingMessage$SendMessageTask;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v0, v7, p1}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    new-array v7, v9, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setAttachment(ILandroid/net/Uri;Z)I
    .locals 9
    .parameter "type"
    .parameter "dataUri"
    .parameter "append"

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 397
    const-string v3, "Mms:app"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    const-string v3, "setAttachment type=%d uri %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    :cond_0
    const/4 v1, 0x0

    .line 410
    .local v1, result:I
    if-nez p1, :cond_1

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-ne v3, v8, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 412
    new-instance v2, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 413
    .local v2, slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 417
    .end local v2           #slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 422
    if-eqz p3, :cond_3

    .line 423
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->appendMedia(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3

    .line 439
    :goto_0
    if-nez v1, :cond_4

    .line 440
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 447
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 449
    if-nez p3, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->calcLengthRequiresMms()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 450
    invoke-virtual {p0, v7, v6}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    .line 454
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 455
    return v1

    .line 425
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->changeMedia(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Lcom/google/android/mms/MmsException;
    const/4 v1, -0x1

    .line 435
    goto :goto_0

    .line 429
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .line 430
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const/4 v1, -0x3

    .line 435
    goto :goto_0

    .line 431
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v0

    .line 432
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v1, -0x2

    .line 435
    goto :goto_0

    .line 433
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_3
    move-exception v0

    .line 434
    .local v0, e:Lcom/android/mms/ResolutionException;
    const/4 v1, -0x4

    goto :goto_0

    .line 441
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    :cond_4
    if-eqz p3, :cond_2

    .line 444
    new-instance v2, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 445
    .restart local v2       #slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto :goto_1

    .line 452
    .end local v2           #slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    invoke-direct {p0, v8, v3, v7}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_2
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 2
    .parameter "conv"

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1017
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1018
    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 2
    .parameter "hasEmail"
    .parameter "notify"

    .prologue
    const/4 v1, 0x1

    .line 1029
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1030
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1034
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setLengthRequiresMms(ZZ)V
    .locals 1
    .parameter "mmsRequired"
    .parameter "notify"

    .prologue
    .line 1050
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1051
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "s"
    .parameter "notify"

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 667
    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 668
    return-void

    .line 667
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 353
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->calcLengthRequiresMms()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    .line 354
    return-void
.end method

.method public setTimeToSend(J)V
    .locals 0
    .parameter "timeToSend"

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J

    .line 156
    return-void
.end method

.method public setWorkingRecipients(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 971
    .local p1, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, s:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 974
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 975
    .local v1, size:I
    packed-switch v1, :pswitch_data_0

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{...} len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    .end local v1           #size:I
    :cond_0
    :goto_0
    return-void

    .line 977
    .restart local v1       #size:I
    :pswitch_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #s:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 978
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0

    .line 980
    :pswitch_1
    const-string v0, "empty"

    .line 981
    goto :goto_0

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public syncWorkingRecipients()V
    .locals 5

    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 757
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 760
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 761
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 766
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 768
    .end local v0           #recipients:Lcom/android/mms/data/ContactList;
    :cond_2
    return-void
.end method

.method public unDiscard()V
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 915
    return-void
.end method
