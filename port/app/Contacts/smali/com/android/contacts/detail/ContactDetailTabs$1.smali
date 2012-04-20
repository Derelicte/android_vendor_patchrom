.class Lcom/android/contacts/detail/ContactDetailTabs$1;
.super Ljava/lang/Object;
.source "ContactDetailTabs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailTabs;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailTabs;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabs$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 92
    .local v1, tab:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabs$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabs;

    #getter for: Lcom/android/contacts/detail/ContactDetailTabs;->mListener:Lcom/android/contacts/detail/ContactDetailTabs$Listener;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailTabs;->access$000(Lcom/android/contacts/detail/ContactDetailTabs;)Lcom/android/contacts/detail/ContactDetailTabs$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/detail/CarouselTab;

    if-eqz v2, :cond_0

    .line 93
    check-cast v1, Lcom/android/contacts/detail/CarouselTab;

    .line 94
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabs$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabs;

    #getter for: Lcom/android/contacts/detail/ContactDetailTabs;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailTabs;->access$100(Lcom/android/contacts/detail/ContactDetailTabs;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 95
    .local v0, index:I
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabs$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabs;

    #getter for: Lcom/android/contacts/detail/ContactDetailTabs;->mListener:Lcom/android/contacts/detail/ContactDetailTabs$Listener;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailTabs;->access$000(Lcom/android/contacts/detail/ContactDetailTabs;)Lcom/android/contacts/detail/ContactDetailTabs$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/contacts/detail/ContactDetailTabs$Listener;->onTabSelected(I)V

    .line 97
    .end local v0           #index:I
    :cond_0
    return-void
.end method
