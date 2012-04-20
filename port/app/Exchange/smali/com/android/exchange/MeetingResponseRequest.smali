.class public Lcom/android/exchange/MeetingResponseRequest;
.super Lcom/android/exchange/Request;
.source "MeetingResponseRequest.java"


# instance fields
.field public final mResponse:I


# direct methods
.method constructor <init>(JI)V
    .locals 0
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/Request;-><init>(J)V

    .line 27
    iput p3, p0, Lcom/android/exchange/MeetingResponseRequest;->mResponse:I

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 33
    instance-of v1, p1, Lcom/android/exchange/MeetingResponseRequest;

    if-nez v1, :cond_1

    .line 34
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/exchange/MeetingResponseRequest;

    .end local p1
    iget-wide v1, p1, Lcom/android/exchange/MeetingResponseRequest;->mMessageId:J

    iget-wide v3, p0, Lcom/android/exchange/MeetingResponseRequest;->mMessageId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/exchange/MeetingResponseRequest;->mMessageId:J

    long-to-int v0, v0

    return v0
.end method
