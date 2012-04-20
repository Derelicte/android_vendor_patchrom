.class public Lcom/android/updater/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ShareActivity$GetShareMessageTask;,
        Lcom/android/updater/ShareActivity$MessageChecker;
    }
.end annotation


# static fields
.field private static QQ_PACKAGE:Ljava/lang/String;

.field private static SHARE_IMAGE_ID:[I

.field private static SINA_PACKAGE:Ljava/lang/String;

.field private static sShareName2Id:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LEFT:[I

.field private final SHARE_IMAGE_NAME:Ljava/lang/String;

.field private final TOP:[I

.field private mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPreferences:Lcom/android/updater/utils/Preferences;

.field private mShareContent:Landroid/widget/EditText;

.field private mShareContentString:Ljava/lang/String;

.field private mShareQQ:Landroid/widget/Button;

.field private mShareQQClickListener:Landroid/view/View$OnClickListener;

.field private mShareSina:Landroid/widget/Button;

.field private mShareSinaClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const-string v0, "com.sina.weibo"

    sput-object v0, Lcom/android/updater/ShareActivity;->SINA_PACKAGE:Ljava/lang/String;

    .line 53
    const-string v0, "com.tencent.WBlog"

    sput-object v0, Lcom/android/updater/ShareActivity;->QQ_PACKAGE:Ljava/lang/String;

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/updater/ShareActivity;->SHARE_IMAGE_ID:[I

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    .line 77
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020026

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020023

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020024

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020025

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020027

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020028

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020029

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02002a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02002b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020032

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020033

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020034

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020035

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020038

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020039

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02003a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02003e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f02003f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x77

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020040

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020041

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const v2, 0x7f020043

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void

    .line 67
    :array_0
    .array-data 0x4
        0x2ct 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const-string v0, "share.jpg"

    iput-object v0, p0, Lcom/android/updater/ShareActivity;->SHARE_IMAGE_NAME:Ljava/lang/String;

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/updater/ShareActivity;->LEFT:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/updater/ShareActivity;->TOP:[I

    .line 353
    new-instance v0, Lcom/android/updater/ShareActivity$1;

    invoke-direct {v0, p0}, Lcom/android/updater/ShareActivity$1;-><init>(Lcom/android/updater/ShareActivity;)V

    iput-object v0, p0, Lcom/android/updater/ShareActivity;->mShareSinaClickListener:Landroid/view/View$OnClickListener;

    .line 361
    new-instance v0, Lcom/android/updater/ShareActivity$2;

    invoke-direct {v0, p0}, Lcom/android/updater/ShareActivity$2;-><init>(Lcom/android/updater/ShareActivity;)V

    iput-object v0, p0, Lcom/android/updater/ShareActivity;->mShareQQClickListener:Landroid/view/View$OnClickListener;

    .line 408
    return-void

    .line 65
    nop

    :array_0
    .array-data 0x4
        0x1et 0x1t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
        0xe2t 0xfft 0xfft 0xfft
        0x18t 0x1t 0x0t 0x0t
        0xect 0xfft 0xfft 0xfft
    .end array-data

    .line 66
    :array_1
    .array-data 0x4
        0x8at 0x2t 0x0t 0x0t
        0x47t 0x2t 0x0t 0x0t
        0x95t 0x2t 0x0t 0x0t
        0xd8t 0xfft 0xfft 0xfft
        0xd8t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/updater/ShareActivity;->SINA_PACKAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/updater/ShareActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/updater/ShareActivity;->share(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/updater/ShareActivity;->QQ_PACKAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/updater/ShareActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/updater/ShareActivity;->mShareContentString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/updater/ShareActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/updater/ShareActivity;->update()V

    return-void
.end method

.method private getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 371
    :try_start_0
    invoke-virtual {p0}, Lcom/android/updater/ShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 372
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 373
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 378
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 376
    :catch_0
    move-exception v2

    .line 378
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getShareImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "stamp"

    .prologue
    .line 302
    const/16 v16, 0x0

    .line 304
    .local v16, shareImage:Landroid/graphics/Bitmap;
    new-instance v15, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-direct {v15, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 305
    .local v15, rdm:Ljava/util/Random;
    sget-object v21, Lcom/android/updater/ShareActivity;->SHARE_IMAGE_ID:[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 306
    .local v7, index:I
    sget-object v21, Lcom/android/updater/ShareActivity;->SHARE_IMAGE_ID:[I

    aget v21, v21, v7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/updater/ShareActivity;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 307
    .local v11, originalShareImage:Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 311
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 312
    .local v6, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/ShareActivity;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 313
    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 314
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v6, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 316
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 319
    .local v20, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/ShareActivity;->mPreferences:Lcom/android/updater/utils/Preferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/updater/utils/Preferences;->getRank()Ljava/lang/String;

    move-result-object v13

    .line 320
    .local v13, rank:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/updater/utils/SysUtils;->getMIUIAccountToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 321
    .local v18, token:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 322
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 324
    .local v12, paint:Landroid/graphics/Paint;
    const/16 v21, 0x0

    sget-object v22, Landroid/R$styleable;->TextAppearance:[I

    const v23, 0x1010034

    const v24, 0x103003e

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/updater/ShareActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 327
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 328
    .local v17, textSize:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 329
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 330
    sget-object v21, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 331
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/updater/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f040005

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    const v21, 0x7f050054

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/updater/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, myRank:Ljava/lang/String;
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 336
    .local v10, myRankWidth:F
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 338
    .local v14, rankWidth:F
    const v19, 0x443b8000

    .line 339
    .local v19, top:F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v10

    sub-float v21, v21, v14

    const/high16 v22, 0x4000

    div-float v8, v21, v22

    .line 341
    .local v8, left:F
    move/from16 v0, v19

    invoke-virtual {v6, v9, v8, v0, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    add-float/2addr v8, v10

    .line 343
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    move/from16 v0, v19

    invoke-virtual {v6, v13, v8, v0, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 348
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v8           #left:F
    .end local v9           #myRank:Ljava/lang/String;
    .end local v10           #myRankWidth:F
    .end local v12           #paint:Landroid/graphics/Paint;
    .end local v14           #rankWidth:F
    .end local v17           #textSize:I
    .end local v19           #top:F
    :cond_0
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/ShareActivity;->LEFT:[I

    move-object/from16 v21, v0

    aget v21, v21, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/ShareActivity;->TOP:[I

    move-object/from16 v22, v0

    aget v22, v22, v7

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 350
    return-object v16
.end method

.method private getShareImagePath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, shareImagePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getRomDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "share.jpg"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v0, outPutFile:Ljava/io/File;
    :try_start_0
    invoke-direct {p0}, Lcom/android/updater/ShareActivity;->getStamp()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 219
    .local v4, stamp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/android/updater/ShareActivity;->getShareImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, shareImg:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 223
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v1, outPutStream:Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 225
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 234
    .end local v1           #outPutStream:Ljava/io/FileOutputStream;
    .end local v3           #shareImg:Landroid/graphics/Bitmap;
    .end local v4           #stamp:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v2

    .line 232
    :catch_0
    move-exception v5

    goto :goto_0

    .line 231
    :catch_1
    move-exception v5

    goto :goto_0

    .line 230
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private getStamp()Landroid/graphics/Bitmap;
    .locals 23

    .prologue
    .line 238
    const/16 v16, 0x0

    .line 239
    .local v16, stamp:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getIncrementalVersion()Ljava/lang/String;

    move-result-object v17

    .line 240
    .local v17, sysVersion:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 242
    const/4 v3, 0x7

    .line 243
    .local v3, MAX_VERSION_LENGTH:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v13

    .line 244
    .local v13, length:I
    const/16 v20, 0x7

    move/from16 v0, v20

    if-le v13, v0, :cond_0

    .line 245
    const/16 v20, 0x0

    const/16 v21, 0x7

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 246
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v13

    .line 250
    :cond_0
    const v20, 0x7f02003c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/updater/ShareActivity;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 251
    .local v14, originalStamp:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 255
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 256
    .local v6, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/updater/ShareActivity;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 257
    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 260
    new-instance v15, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v15, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 261
    .local v15, rdm:Ljava/util/Random;
    const/16 v20, 0x5a

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v20

    add-int/lit8 v20, v20, -0x2d

    move/from16 v0, v20

    int-to-float v7, v0

    .line 262
    .local v7, degrees:F
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v7, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 264
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v6, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v11, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/16 v19, 0x0

    .line 269
    .local v19, totalWidth:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v13, :cond_2

    .line 270
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 271
    .local v5, c:C
    sget-object v20, Lcom/android/updater/ShareActivity;->sShareName2Id:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 272
    .local v8, drawableId:I
    if-lez v8, :cond_1

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/updater/ShareActivity;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 274
    .local v4, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    add-int v19, v19, v20

    .line 275
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v4           #bm:Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 279
    .end local v5           #c:C
    .end local v8           #drawableId:I
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 280
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v12, v0

    .line 281
    .local v12, left:F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Bitmap;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v21, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .line 282
    .local v18, top:F
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 283
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v6, v4, v12, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 284
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v12, v12, v20

    goto :goto_1

    .line 289
    .end local v3           #MAX_VERSION_LENGTH:I
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v7           #degrees:F
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v12           #left:F
    .end local v13           #length:I
    .end local v14           #originalStamp:Landroid/graphics/Bitmap;
    .end local v15           #rdm:Ljava/util/Random;
    .end local v18           #top:F
    .end local v19           #totalWidth:I
    :cond_3
    return-object v16
.end method

.method public static isShareAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 392
    sget-object v0, Lcom/android/updater/ShareActivity;->SINA_PACKAGE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/updater/ShareActivity;->isShareAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/updater/ShareActivity;->QQ_PACKAGE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/updater/ShareActivity;->isShareAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShareAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 383
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 384
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 385
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 388
    .end local v0           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v2

    .line 386
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private share(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/android/updater/ShareActivity;->mShareContentString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-direct {p0}, Lcom/android/updater/ShareActivity;->getShareImagePath()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, shareImagePath:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/updater/ShareActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 154
    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->getMIUIAccountToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, token:Ljava/lang/String;
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getModVersion()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, modVersion:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/updater/ShareActivity;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v5}, Lcom/android/updater/utils/Preferences;->getRank()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, rank:Ljava/lang/String;
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getChangelogUrl()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, changeLogUrl:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/updater/ShareActivity;->mShareContentString:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 160
    :cond_0
    const v5, 0x7f050060

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/updater/ShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/updater/ShareActivity;->mShareContentString:Ljava/lang/String;

    .line 165
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/updater/ShareActivity;->mShareContent:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/updater/ShareActivity;->mShareContentString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    sget-object v5, Lcom/android/updater/ShareActivity;->SINA_PACKAGE:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/updater/ShareActivity;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 168
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 169
    iget-object v5, p0, Lcom/android/updater/ShareActivity;->mShareSina:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v5, p0, Lcom/android/updater/ShareActivity;->mShareSina:Landroid/widget/Button;

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 175
    :goto_1
    sget-object v5, Lcom/android/updater/ShareActivity;->QQ_PACKAGE:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/updater/ShareActivity;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_4

    .line 177
    iget-object v5, p0, Lcom/android/updater/ShareActivity;->mShareQQ:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v5, p0, Lcom/android/updater/ShareActivity;->mShareQQ:Landroid/widget/Button;

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 182
    :goto_2
    return-void

    .line 162
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v5, 0x7f050061

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v3, v6, v9

    aput-object v0, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/android/updater/ShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/updater/ShareActivity;->mShareContentString:Ljava/lang/String;

    goto :goto_0

    .line 172
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v5, p0, Lcom/android/updater/ShareActivity;->mShareSina:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 180
    :cond_4
    iget-object v5, p0, Lcom/android/updater/ShareActivity;->mShareQQ:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "drawableId"

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/updater/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 295
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f05004a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/android/updater/ShareActivity;->setContentView(I)V

    .line 121
    invoke-virtual {p0}, Lcom/android/updater/ShareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 122
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 123
    const v2, 0x7f080018

    invoke-virtual {p0, v2}, Lcom/android/updater/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/updater/ShareActivity;->mShareContent:Landroid/widget/EditText;

    .line 124
    iget-object v2, p0, Lcom/android/updater/ShareActivity;->mShareContent:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 125
    const v2, 0x7f080019

    invoke-virtual {p0, v2}, Lcom/android/updater/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/updater/ShareActivity;->mShareSina:Landroid/widget/Button;

    .line 126
    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Lcom/android/updater/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/updater/ShareActivity;->mShareQQ:Landroid/widget/Button;

    .line 128
    iget-object v2, p0, Lcom/android/updater/ShareActivity;->mShareSina:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/updater/ShareActivity;->mShareSinaClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/android/updater/ShareActivity;->mShareQQ:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/updater/ShareActivity;->mShareQQClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v2, Lcom/android/updater/utils/Preferences;

    invoke-direct {v2, p0}, Lcom/android/updater/utils/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/updater/ShareActivity;->mPreferences:Lcom/android/updater/utils/Preferences;

    .line 132
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x7

    invoke-direct {v2, v5, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v2, p0, Lcom/android/updater/ShareActivity;->mPaintFlags:Landroid/graphics/PaintFlagsDrawFilter;

    .line 136
    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 141
    invoke-virtual {p0, v6}, Lcom/android/updater/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 143
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 144
    new-instance v2, Lcom/android/updater/ShareActivity$GetShareMessageTask;

    invoke-direct {v2, p0, v1}, Lcom/android/updater/ShareActivity$GetShareMessageTask;-><init>(Lcom/android/updater/ShareActivity;Landroid/app/ProgressDialog;)V

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/updater/ShareActivity;->mPreferences:Lcom/android/updater/utils/Preferences;

    invoke-virtual {v4}, Lcom/android/updater/utils/Preferences;->getRank()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/updater/ShareActivity$GetShareMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/updater/ShareActivity;->finish()V

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/updater/ShareActivity;->update()V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    return-void
.end method
