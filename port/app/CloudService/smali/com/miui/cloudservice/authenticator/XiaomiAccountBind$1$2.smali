.class Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$2;
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

.field final synthetic val$urltobrowse:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$2;->this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;

    iput-object p2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$2;->val$urltobrowse:Landroid/net/Uri;

    iput-object p3, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$2;->val$urltobrowse:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$2;->this$1:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;

    iget-object v1, v1, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1;->this$0:Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;

    invoke-virtual {v1, v0}, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind;->startActivity(Landroid/content/Intent;)V

    .line 181
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/XiaomiAccountBind$1$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 182
    return-void
.end method
