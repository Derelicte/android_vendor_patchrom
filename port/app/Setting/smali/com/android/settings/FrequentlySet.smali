.class public Lcom/android/settings/FrequentlySet;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/FrequentlySet$HeaderItem;
    }
.end annotation


# static fields
.field private static sAllHeaderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/FrequentlySet$HeaderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sHeaderId2Index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sKey2Index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    .line 20
    const-string v0, "airplane_mode_settings"

    const v1, 0x7f050008

    const v2, 0x7f0801d0

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 21
    const-string v0, "mobile_network_settings"

    const v1, 0x7f05002a

    const v2, 0x7f0801db

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 22
    const-string v0, "wifi_settings"

    const v1, 0x7f050057

    const v2, 0x7f0801df

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 23
    const-string v0, "bluetooth_settings"

    const v1, 0x7f050011

    const v2, 0x7f0801d3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 24
    const-string v0, "android_beam_settings"

    const v1, 0x7f050009

    const v2, 0x7f0801d1

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 25
    const-string v0, "vpn_settings"

    const v1, 0x7f050050

    const v2, 0x7f0801f4

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 26
    const-string v0, "tether_settings"

    const v1, 0x7f050049

    const v2, 0x7f0801f2

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 27
    const-string v0, "brightness"

    const v1, 0x7f050013

    const v2, 0x7f0801d4

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 28
    const-string v0, "wallpaper"

    const v1, 0x7f050052

    const v2, 0x7f0801f5

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 29
    const-string v0, "launcher_settings"

    const v1, 0x7f050025

    const v2, 0x7f0801d9

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 30
    const-string v0, "accelerometer"

    const v1, 0x7f050001

    const v2, 0x7f0801ce

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 31
    const-string v0, "screen_timeout"

    const v1, 0x7f050030

    const v2, 0x7f0801de

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 32
    const-string v0, "ring_volume"

    const v1, 0x7f05002e

    const v2, 0x7f0801dc

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 33
    const-string v0, "ringtone"

    const v1, 0x7f05002f

    const v2, 0x7f0801dd

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 34
    const-string v0, "sms_received_sound"

    const v1, 0x7f050041

    const v2, 0x7f0801f1

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 35
    const-string v0, "silent_mode"

    const v1, 0x7f05003f

    const v2, 0x7f0801f0

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 36
    const-string v0, "unlock_set_or_change"

    const v1, 0x7f05004e

    const v2, 0x7f0801f3

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 37
    const-string v0, "access_control_settings"

    const v1, 0x7f050003

    const v2, 0x7f0801cf

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 38
    const-string v0, "location_gps"

    const v1, 0x7f05001e

    const v2, 0x7f0801d6

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 39
    const-string v0, "status_bar_settings"

    const v1, 0x7f050045

    const v2, 0x7f0801e4

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 40
    const-string v0, "sync_settings"

    const v1, 0x7f050046

    const v2, 0x7f0801e7

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 41
    const-string v0, "battery_indicator_style"

    const v1, 0x7f05000e

    const v2, 0x7f0801d2

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 42
    const-string v0, "key_settings"

    const v1, 0x7f050021

    const v2, 0x7f0801d7

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 43
    const-string v0, "led_settings"

    const v1, 0x7f050026

    const v2, 0x7f0801da

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 44
    const-string v0, "date_time_settings"

    const v1, 0x7f050014

    const v2, 0x7f0801d5

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 45
    const-string v0, "language_settings"

    const v1, 0x7f050023

    const v2, 0x7f0801d8

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 46
    const-string v0, "about_settings"

    const/high16 v1, 0x7f05

    const v2, 0x7f0801cd

    invoke-static {v0, v1, v2}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;II)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private static addHeaderItem(Ljava/lang/String;II)V
    .locals 1
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIZ)V

    .line 51
    return-void
.end method

.method private static addHeaderItem(Ljava/lang/String;IIZ)V
    .locals 4
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"
    .parameter "isDefault"

    .prologue
    .line 54
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55
    .local v0, index:I
    sget-object v1, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/FrequentlySet$HeaderItem;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/settings/FrequentlySet$HeaderItem;-><init>(Ljava/lang/String;IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public static getDefaultKeys()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, defaultKeyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FrequentlySet$HeaderItem;

    .line 81
    .local v1, headerItem:Lcom/android/settings/FrequentlySet$HeaderItem;
    iget-boolean v3, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->isDefaultKey:Z

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v1           #headerItem:Lcom/android/settings/FrequentlySet$HeaderItem;
    :cond_1
    return-object v0
.end method

.method public static getHeaderIds()[I
    .locals 4

    .prologue
    .line 89
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 90
    .local v2, size:I
    new-array v0, v2, [I

    .line 91
    .local v0, headerFileIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 92
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget v3, v3, Lcom/android/settings/FrequentlySet$HeaderItem;->headerFileId:I

    aput v3, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v0
.end method

.method public static getHeaderIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 61
    sget-object v1, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 62
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getKey(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 68
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget-object v0, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    .line 70
    :cond_0
    return-object v0
.end method

.method public static getKeyIndex(I)I
    .locals 3
    .parameter "headerId"

    .prologue
    .line 74
    sget-object v1, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 75
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
