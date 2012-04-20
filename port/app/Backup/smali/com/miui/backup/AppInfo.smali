.class public Lcom/miui/backup/AppInfo;
.super Lcom/miui/milk/common/AppInfo;
.source "AppInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/miui/milk/common/AppInfo;-><init>()V

    return-void
.end method

.method private genTypeDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, appTypeDesc:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 15
    .local v1, ret:Ljava/lang/CharSequence;
    iget v2, p0, Lcom/miui/backup/AppInfo;->type:I

    packed-switch v2, :pswitch_data_0

    .line 26
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 17
    :pswitch_0
    aget-object v1, v0, v4

    .line 18
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v2, 0x2

    aget-object v1, v0, v2

    .line 21
    goto :goto_0

    .line 23
    :pswitch_2
    aget-object v1, v0, v4

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public genDisplay(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/backup/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/backup/AppInfo;->genTypeDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/AppInfo;->display:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public genSummary(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/backup/AppInfo;->genTypeDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/AppInfo;->summary:Ljava/lang/String;

    .line 31
    return-void
.end method
