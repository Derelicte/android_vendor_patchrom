.class Lcom/android/mms/ui/ConversationBase$9;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase;->showAddMessageAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;

.field final synthetic val$lastPosAfterAdd:I

.field final synthetic val$messageListAnimator:Landroid/view/View;

.field final synthetic val$newMsgFinalTop:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationBase$9;->val$messageListAnimator:Landroid/view/View;

    iput p3, p0, Lcom/android/mms/ui/ConversationBase$9;->val$lastPosAfterAdd:I

    iput p4, p0, Lcom/android/mms/ui/ConversationBase$9;->val$newMsgFinalTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$9;->val$messageListAnimator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1552
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 1553
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAllowTranscriptOnResize(Z)V

    .line 1554
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget v1, p0, Lcom/android/mms/ui/ConversationBase$9;->val$lastPosAfterAdd:I

    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase$9;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/mms/ui/ConversationBase$9;->val$newMsgFinalTop:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageListView;->setSelectionFromTop(II)V

    .line 1556
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1547
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1543
    return-void
.end method
