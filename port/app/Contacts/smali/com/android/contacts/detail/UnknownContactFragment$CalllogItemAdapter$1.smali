.class Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;
.super Ljava/lang/Object;
.source "UnknownContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

.field final synthetic val$calllog:Lcom/android/contacts/CalllogMetaData;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;Lcom/android/contacts/CalllogMetaData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;->this$1:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

    iput-object p2, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 506
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-virtual {v2}, Lcom/android/contacts/CalllogMetaData;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-virtual {v3}, Lcom/android/contacts/CalllogMetaData;->getNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-virtual {v4}, Lcom/android/contacts/CalllogMetaData;->getVoicemailUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;->val$calllog:Lcom/android/contacts/CalllogMetaData;

    invoke-virtual {v5}, Lcom/android/contacts/CalllogMetaData;->getId()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/contacts/calllog/IntentProvider;->getCallIntentProvider(ILjava/lang/String;Ljava/lang/String;J)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v0

    .line 510
    .local v0, intentProvider:Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v0, :cond_0

    .line 511
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;->this$1:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

    iget-object v2, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v2}, Lcom/android/contacts/detail/UnknownContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 512
    .local v1, phoneIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter$1;->this$1:Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;

    iget-object v2, v2, Lcom/android/contacts/detail/UnknownContactFragment$CalllogItemAdapter;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-virtual {v2, v1}, Lcom/android/contacts/detail/UnknownContactFragment;->startActivity(Landroid/content/Intent;)V

    .line 514
    .end local v1           #phoneIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
