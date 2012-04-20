.class Lcom/miui/milk/control/local/AccountController$Authokens;
.super Ljava/lang/Object;
.source "AccountController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/control/local/AccountController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Authokens"
.end annotation


# instance fields
.field public authtoken:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/control/local/AccountController$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/miui/milk/control/local/AccountController$Authokens;-><init>()V

    return-void
.end method
