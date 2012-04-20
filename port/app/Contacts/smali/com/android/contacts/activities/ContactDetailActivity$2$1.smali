.class Lcom/android/contacts/activities/ContactDetailActivity$2$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$2;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

.field final synthetic val$result:Lcom/android/contacts/ContactLoader$Result;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$2;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    #setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$102(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 244
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$002(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 245
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->invalidateOptionsMenu()V

    .line 246
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #calls: Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$200(Lcom/android/contacts/activities/ContactDetailActivity;)V

    .line 247
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 252
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->ringtoneUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "ContactDetailActivity"

    const-string v1, "reset ringtone uri"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v2, v2, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v3, v3, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->ringtoneUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/contacts/activities/ContactDetailActivity;->access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactsUtils;->handleRingtonePicked(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 257
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$2;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/activities/ContactDetailActivity;->ringtoneUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$402(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;

    goto/16 :goto_0
.end method
