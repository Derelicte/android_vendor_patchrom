.class public Lcom/android/contacts/calllog/CallTypeHelper;
.super Ljava/lang/Object;
.source "CallTypeHelper.java"


# instance fields
.field private final mIncomingName:Ljava/lang/CharSequence;

.field private final mMissedName:Ljava/lang/CharSequence;

.field private final mNewMissedColor:I

.field private final mNewVoicemailColor:I

.field private final mOutgoingName:Ljava/lang/CharSequence;

.field private final mVoicemailName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter "resources"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    .line 44
    const v0, 0x7f0b0082

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    .line 45
    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    .line 46
    const v0, 0x7f0b0084

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    .line 47
    const v0, 0x7f090009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mNewMissedColor:I

    .line 48
    const v0, 0x7f09000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mNewVoicemailColor:I

    .line 49
    return-void
.end method


# virtual methods
.method public getCallTypeText(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "callType"

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    .line 64
    :goto_0
    return-object v0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 64
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getHighlightedColor(I)Ljava/lang/Integer;
    .locals 3
    .parameter "callType"

    .prologue
    const/4 v0, 0x0

    .line 73
    packed-switch p1, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_0
    iget v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mNewMissedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 86
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    iget v0, p0, Lcom/android/contacts/calllog/CallTypeHelper;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
