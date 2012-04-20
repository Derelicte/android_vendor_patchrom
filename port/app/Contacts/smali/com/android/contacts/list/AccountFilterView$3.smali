.class Lcom/android/contacts/list/AccountFilterView$3;
.super Ljava/lang/Object;
.source "AccountFilterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/AccountFilterView;->setContactListFilterController(Lcom/android/contacts/list/ContactListFilterController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/AccountFilterView;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/AccountFilterView;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterView$3;->this$0:Lcom/android/contacts/list/AccountFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$3;->this$0:Lcom/android/contacts/list/AccountFilterView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/AccountFilterView;->setDropdownArrow(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$3;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterView$3;->this$0:Lcom/android/contacts/list/AccountFilterView;

    invoke-virtual {v1}, Lcom/android/contacts/list/AccountFilterView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 107
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$3;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 108
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$3;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 109
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$3;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 111
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$3;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 112
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterView$3;->this$0:Lcom/android/contacts/list/AccountFilterView;

    #getter for: Lcom/android/contacts/list/AccountFilterView;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterView;->access$100(Lcom/android/contacts/list/AccountFilterView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 113
    return-void
.end method
