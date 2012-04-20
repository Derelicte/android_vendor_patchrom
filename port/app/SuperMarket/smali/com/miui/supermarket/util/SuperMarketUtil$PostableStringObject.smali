.class public Lcom/miui/supermarket/util/SuperMarketUtil$PostableStringObject;
.super Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;
.source "SuperMarketUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/util/SuperMarketUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostableStringObject"
.end annotation


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "formKey"
    .parameter "formValue"

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/miui/supermarket/util/SuperMarketUtil$PostableObject;-><init>(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/supermarket/util/SuperMarketUtil$PostableStringObject;->mValue:Ljava/lang/String;

    .line 238
    iput-object p2, p0, Lcom/miui/supermarket/util/SuperMarketUtil$PostableStringObject;->mValue:Ljava/lang/String;

    .line 239
    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/supermarket/util/SuperMarketUtil$PostableStringObject;->mFormKey:Ljava/lang/String;

    return-object v0
.end method

.method protected writeValue(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/supermarket/util/SuperMarketUtil$PostableStringObject;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 249
    return-void
.end method
