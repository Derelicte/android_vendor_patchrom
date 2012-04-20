.class public Lcom/android/exchange/adapter/SettingsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "SettingsParser.java"


# instance fields
.field private final mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 0
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 35
    iput-object p2, p0, Lcom/android/exchange/adapter/SettingsParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 36
    return-void
.end method


# virtual methods
.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, res:Z
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x485

    if-eq v2, v3, :cond_0

    .line 42
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 45
    iget v2, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v3, 0x486

    if-ne v2, v3, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v1

    .line 47
    .local v1, status:I
    iget-object v2, p0, Lcom/android/exchange/adapter/SettingsParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Settings status = "

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 48
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    .end local v1           #status:I
    :cond_2
    iget v2, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v3, 0x496

    if-ne v2, v3, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseDeviceInformation()V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 60
    :cond_4
    return v0
.end method

.method public parseDeviceInformation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    :goto_0
    const/16 v0, 0x496

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 65
    iget v0, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v1, 0x488

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->parseSet()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public parseSet()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    :goto_0
    const/16 v0, 0x488

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/SettingsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 75
    iget v0, p0, Lcom/android/exchange/adapter/SettingsParser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/exchange/adapter/SettingsParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v1, "Set status = "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->getValueInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SettingsParser;->skipTag()V

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method
