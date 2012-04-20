.class Lcom/android/contacts/editor/ContactEditorFragment$3$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

.field final synthetic val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$3;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->val$popup:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
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
    .line 904
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 905
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSetAndId;

    move-result-object v0

    .line 906
    .local v0, newAccount:Lcom/android/contacts/model/AccountWithDataSetAndId;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSetAndId;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountWithDataSetAndId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$accounts:Ljava/util/List;

    if-nez v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$3;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSetAndId;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$3;

    iget-object v1, v1, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-wide v2, v0, Lcom/android/contacts/model/AccountWithDataSetAndId;->rawContactId:J

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForContact(J)V
    invoke-static {v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600(Lcom/android/contacts/editor/ContactEditorFragment;J)V

    goto :goto_0
.end method
