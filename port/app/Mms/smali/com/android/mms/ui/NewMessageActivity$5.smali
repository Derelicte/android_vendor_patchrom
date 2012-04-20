.class Lcom/android/mms/ui/NewMessageActivity$5;
.super Landroid/database/DataSetObserver;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$5;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$5;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$500(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$5;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mConfirmRecipientButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$600(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$5;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$000(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$5;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mConfirmRecipientButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$600(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$5;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$000(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
