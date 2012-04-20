.class Lcom/android/contacts/editor/ContactEditorFragment$3;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$accounts:Ljava/util/List;

.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$arrowMark:Landroid/widget/ImageView;

.field final synthetic val$currentAccount:Lcom/android/contacts/model/AccountWithDataSetAndId;

.field final synthetic val$currentState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/AccountWithDataSetAndId;Ljava/util/List;Landroid/view/View;Lcom/android/contacts/model/EntityDelta;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSetAndId;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$accounts:Ljava/util/List;

    iput-object p4, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$anchorView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iput-object p6, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$arrowMark:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 889
    new-instance v1, Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 890
    .local v1, popup:Landroid/widget/ListPopupWindow;
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_CREATEABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSetAndId;

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$accounts:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/AccountWithDataSetAndId;Ljava/util/List;)V

    .line 893
    .local v0, adapter:Lcom/android/contacts/util/AccountsListAdapter;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$anchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 894
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$anchorView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 895
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 896
    invoke-virtual {v1, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 897
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 898
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    new-instance v2, Lcom/android/contacts/editor/ContactEditorFragment$3$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$3$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$3;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 916
    new-instance v2, Lcom/android/contacts/editor/ContactEditorFragment$3$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/ContactEditorFragment$3$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$3;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 922
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 923
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$arrowMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v6}, Lcom/android/contacts/editor/ContactEditorFragment;->setDropdownArrow(Landroid/widget/ImageView;Z)V

    .line 924
    return-void
.end method
