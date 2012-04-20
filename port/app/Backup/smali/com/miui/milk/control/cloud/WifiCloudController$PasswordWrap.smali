.class Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;
.super Ljava/lang/Object;
.source "WifiCloudController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/control/cloud/WifiCloudController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PasswordWrap"
.end annotation


# instance fields
.field public psk:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/milk/control/cloud/WifiCloudController;

.field public wep_key0:Ljava/lang/String;

.field public wep_key1:Ljava/lang/String;

.field public wep_key2:Ljava/lang/String;

.field public wep_key3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/milk/control/cloud/WifiCloudController;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 281
    iput-object p1, p0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->this$0:Lcom/miui/milk/control/cloud/WifiCloudController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->psk:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key0:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key1:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key2:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;->wep_key3:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/control/cloud/WifiCloudController;Lcom/miui/milk/control/cloud/WifiCloudController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/miui/milk/control/cloud/WifiCloudController$PasswordWrap;-><init>(Lcom/miui/milk/control/cloud/WifiCloudController;)V

    return-void
.end method
