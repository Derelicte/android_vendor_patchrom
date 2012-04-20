.class Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
.super Lcom/android/exchange/adapter/Parser;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetItemEstimateParser"
.end annotation


# instance fields
.field private mEstimate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 350
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    return v0
.end method


# virtual methods
.method public parse()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 363
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x185

    if-ne v0, v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseGetItemEstimate()V

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 369
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public parseCollection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    :goto_0
    const/16 v0, 0x188

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 396
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x189

    if-ne v0, v1, :cond_0

    .line 397
    const-string v0, "GetItemEstimateParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIE class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x18a

    if-ne v0, v1, :cond_1

    .line 399
    const-string v0, "GetItemEstimateParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIE collectionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x18c

    if-ne v0, v1, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValueInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    .line 402
    const-string v0, "GetItemEstimateParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIE estimate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 407
    :cond_3
    return-void
.end method

.method public parseGetItemEstimate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    :goto_0
    const/16 v0, 0x185

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 374
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x18d

    if-ne v0, v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseResponse()V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 380
    :cond_1
    return-void
.end method

.method public parseResponse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    :goto_0
    const/16 v0, 0x18d

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 384
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x18e

    if-ne v0, v1, :cond_0

    .line 385
    const-string v0, "GetItemEstimateParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIE status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->tag:I

    const/16 v1, 0x188

    if-ne v0, v1, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parseCollection()V

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->skipTag()V

    goto :goto_0

    .line 392
    :cond_2
    return-void
.end method
