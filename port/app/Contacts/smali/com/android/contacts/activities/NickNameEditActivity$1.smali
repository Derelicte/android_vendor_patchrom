.class Lcom/android/contacts/activities/NickNameEditActivity$1;
.super Ljava/lang/Object;
.source "NickNameEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/NickNameEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/NickNameEditActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/NickNameEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/contacts/activities/NickNameEditActivity$1;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 48
    iget-object v2, p0, Lcom/android/contacts/activities/NickNameEditActivity$1;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    #getter for: Lcom/android/contacts/activities/NickNameEditActivity;->mAdapter:Lcom/android/contacts/editor/NickNameEditListAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/NickNameEditActivity;->access$000(Lcom/android/contacts/activities/NickNameEditActivity;)Lcom/android/contacts/editor/NickNameEditListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/editor/NickNameEditListAdapter;->saveNickName()I

    move-result v0

    .line 49
    .local v0, saveStatus:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/android/contacts/activities/NickNameEditActivity$1;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    iget-object v3, p0, Lcom/android/contacts/activities/NickNameEditActivity$1;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/NickNameEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 58
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/activities/NickNameEditActivity$1;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    if-eq v0, v5, :cond_2

    :goto_1
    #calls: Lcom/android/contacts/activities/NickNameEditActivity;->returnPickerResult(Z)V
    invoke-static {v2, v1}, Lcom/android/contacts/activities/NickNameEditActivity;->access$100(Lcom/android/contacts/activities/NickNameEditActivity;Z)V

    .line 59
    return-void

    .line 53
    :cond_1
    if-ne v0, v5, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/contacts/activities/NickNameEditActivity$1;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    iget-object v3, p0, Lcom/android/contacts/activities/NickNameEditActivity$1;->this$0:Lcom/android/contacts/activities/NickNameEditActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/NickNameEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0200

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 58
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
