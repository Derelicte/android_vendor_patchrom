.class Lcom/android/mms/ui/ConversationFragment$4;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$4;->this$0:Lcom/android/mms/ui/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$4;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mListView:Lcom/android/mms/util/EditableListView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$800(Lcom/android/mms/ui/ConversationFragment;)Lcom/android/mms/util/EditableListView;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/util/EditableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 300
    .local v1, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$4;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #getter for: Lcom/android/mms/ui/ConversationFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationFragment;->access$200(Lcom/android/mms/ui/ConversationFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 301
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 304
    .local v2, tid:J
    const-string v4, "ConversationFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onListItemClick: pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v4, p0, Lcom/android/mms/ui/ConversationFragment$4;->this$0:Lcom/android/mms/ui/ConversationFragment;

    #calls: Lcom/android/mms/ui/ConversationFragment;->openThread(J)V
    invoke-static {v4, v2, v3}, Lcom/android/mms/ui/ConversationFragment;->access$900(Lcom/android/mms/ui/ConversationFragment;J)V

    .line 308
    return-void
.end method
