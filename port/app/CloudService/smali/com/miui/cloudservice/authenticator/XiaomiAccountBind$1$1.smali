.class Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$1;
.super Ljava/lang/Object;
.source "XiaomiAccountBind.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$1;->this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;

    iput-object p2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 153
    return-void
.end method
