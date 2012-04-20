.class Lcom/android/contacts/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/IntentProvider;

    .line 156
    .local v0, intentProvider:Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    #getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter$1;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    #getter for: Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    :cond_0
    return-void
.end method
