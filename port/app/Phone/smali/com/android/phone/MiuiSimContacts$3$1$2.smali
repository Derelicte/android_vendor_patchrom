.class Lcom/android/phone/MiuiSimContacts$3$1$2;
.super Ljava/lang/Object;
.source "MiuiSimContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSimContacts$3$1;->onFinished(Lcom/android/phone/MiuiSimContacts$SimContactOP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/phone/MiuiSimContacts$3$1;

.field final synthetic val$fToastMsgId:I


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSimContacts$3$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/phone/MiuiSimContacts$3$1$2;->this$2:Lcom/android/phone/MiuiSimContacts$3$1;

    iput p2, p0, Lcom/android/phone/MiuiSimContacts$3$1$2;->val$fToastMsgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/phone/MiuiSimContacts$3$1$2;->this$2:Lcom/android/phone/MiuiSimContacts$3$1;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$3$1;->this$1:Lcom/android/phone/MiuiSimContacts$3;

    iget-object v0, v0, Lcom/android/phone/MiuiSimContacts$3;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget-object v1, p0, Lcom/android/phone/MiuiSimContacts$3$1$2;->this$2:Lcom/android/phone/MiuiSimContacts$3$1;

    iget-object v1, v1, Lcom/android/phone/MiuiSimContacts$3$1;->this$1:Lcom/android/phone/MiuiSimContacts$3;

    iget-object v1, v1, Lcom/android/phone/MiuiSimContacts$3;->this$0:Lcom/android/phone/MiuiSimContacts;

    iget v2, p0, Lcom/android/phone/MiuiSimContacts$3$1$2;->val$fToastMsgId:I

    invoke-virtual {v1, v2}, Lcom/android/phone/MiuiSimContacts;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    return-void
.end method
