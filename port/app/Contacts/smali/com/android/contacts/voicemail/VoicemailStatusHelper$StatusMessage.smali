.class public Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
.super Ljava/lang/Object;
.source "VoicemailStatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusMessage"
.end annotation


# instance fields
.field public final actionMessageId:I

.field public final actionUri:Landroid/net/Uri;

.field public final callDetailsMessageId:I

.field public final callLogMessageId:I

.field public final sourcePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILandroid/net/Uri;)V
    .locals 0
    .parameter "sourcePackage"
    .parameter "callLogMessageId"
    .parameter "callDetailsMessageId"
    .parameter "actionMessageId"
    .parameter "actionUri"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->sourcePackage:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    .line 56
    iput p3, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    .line 57
    iput p4, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    .line 58
    iput-object p5, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    .line 59
    return-void
.end method


# virtual methods
.method public showInCallDetails()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showInCallLog()Z
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
