.class public Lcom/miui/milk/util/SysHelpers;
.super Ljava/lang/Object;
.source "SysHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudApp(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, cloudDataLabel:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v4, Lcom/miui/milk/common/Constants;->SYSTEM_DATA:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 103
    new-instance v0, Lcom/miui/milk/common/AppInfo;

    invoke-direct {v0}, Lcom/miui/milk/common/AppInfo;-><init>()V

    .line 104
    .local v0, appInfo:Lcom/miui/milk/common/AppInfo;
    aget-object v4, v2, v3

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 105
    const/4 v4, 0x2

    iput v4, v0, Lcom/miui/milk/common/AppInfo;->type:I

    .line 106
    sget-object v4, Lcom/miui/milk/common/Constants;->SYSTEM_DATA:[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 107
    iget-object v4, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/miui/milk/common/AutoBackup;->isAppCheck(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 108
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v0           #appInfo:Lcom/miui/milk/common/AppInfo;
    :cond_0
    return-object v1
.end method

.method public static getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "statusCode"

    .prologue
    .line 76
    const-string v1, "2101"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 77
    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, networkErrorString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 78
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_0
    const-string v1, "2102"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 79
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_1
    const/16 v1, 0x1f7

    if-ne p1, v1, :cond_2

    .line 81
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_2
    const/16 v1, 0x191

    if-ne p1, v1, :cond_3

    .line 83
    const v1, 0x7f070066

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_3
    const/16 v1, 0x198

    if-ne p1, v1, :cond_4

    .line 85
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_4
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_5

    .line 87
    const v1, 0x7f070069

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_5
    const/16 v1, 0x190

    if-ne p1, v1, :cond_6

    .line 89
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_6
    const/16 v1, 0x19c

    if-ne p1, v1, :cond_7

    .line 92
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 94
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_7
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0
.end method

.method public static isFieldEmpty([Ljava/lang/String;)Z
    .locals 4
    .parameter "allFields"

    .prologue
    .line 114
    const/4 v0, 0x1

    .line 116
    .local v0, empty:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 117
    aget-object v1, p0, v2

    .line 118
    .local v1, field:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 123
    .end local v1           #field:Ljava/lang/String;
    :cond_0
    return v0

    .line 116
    .restart local v1       #field:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 28
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 30
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 31
    const-string v3, "SysHelpers"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    const-string v3, "SysHelpers"

    const-string v4, "network is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 34
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 35
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 36
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 37
    const-string v3, "SysHelpers"

    const-string v4, "network is available"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v3, 0x1

    goto :goto_0

    .line 35
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 51
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 52
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 53
    const-string v3, "SysHelpers"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    const-string v3, "SysHelpers"

    const-string v4, "wifi is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 56
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 57
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 58
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 61
    const-string v4, "SysHelpers"

    const-string v5, "wifi is available"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
