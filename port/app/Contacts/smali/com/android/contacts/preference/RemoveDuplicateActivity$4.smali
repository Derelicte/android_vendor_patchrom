.class Lcom/android/contacts/preference/RemoveDuplicateActivity$4;
.super Ljava/lang/Object;
.source "RemoveDuplicateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/preference/RemoveDuplicateActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/preference/RemoveDuplicateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$4;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$4;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/preference/RemoveDuplicateActivity;->mNotification:Landroid/app/Notification;

    .line 557
    iget-object v0, p0, Lcom/android/contacts/preference/RemoveDuplicateActivity$4;->this$0:Lcom/android/contacts/preference/RemoveDuplicateActivity;

    invoke-virtual {v0}, Lcom/android/contacts/preference/RemoveDuplicateActivity;->finish()V

    .line 558
    return-void
.end method
