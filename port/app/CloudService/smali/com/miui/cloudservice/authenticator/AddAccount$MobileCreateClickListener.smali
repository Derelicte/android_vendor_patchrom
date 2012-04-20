.class Lcom/miui/cloudservice/authenticator/AddAccount$MobileCreateClickListener;
.super Ljava/lang/Object;
.source "AddAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/cloudservice/authenticator/AddAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileCreateClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/AddAccount;


# direct methods
.method private constructor <init>(Lcom/miui/cloudservice/authenticator/AddAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AddAccount$MobileCreateClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/cloudservice/authenticator/AddAccount;Lcom/miui/cloudservice/authenticator/AddAccount$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccount$MobileCreateClickListener;-><init>(Lcom/miui/cloudservice/authenticator/AddAccount;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccount$MobileCreateClickListener;->this$0:Lcom/miui/cloudservice/authenticator/AddAccount;

    #calls: Lcom/miui/cloudservice/authenticator/AddAccount;->mobileCreate()V
    invoke-static {v0}, Lcom/miui/cloudservice/authenticator/AddAccount;->access$800(Lcom/miui/cloudservice/authenticator/AddAccount;)V

    .line 212
    return-void
.end method
