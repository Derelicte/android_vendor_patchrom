.class public Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
.super Ljava/io/IOException;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/util/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpException"
.end annotation


# instance fields
.field private final mReasonPhrase:Ljava/lang/String;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "statusCode"
    .parameter "reasonPhrase"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 127
    iput p1, p0, Lcom/android/quicksearchbox/util/HttpHelper$HttpException;->mStatusCode:I

    .line 128
    iput-object p2, p0, Lcom/android/quicksearchbox/util/HttpHelper$HttpException;->mReasonPhrase:Ljava/lang/String;

    .line 129
    return-void
.end method
