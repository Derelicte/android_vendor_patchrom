.class Lcom/android/contacts/detail/ContactLoaderFragment$2;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;->showRawContactDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

.field final synthetic val$adapter:Lcom/android/contacts/detail/RawContactAdapter;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/detail/RawContactAdapter;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->val$adapter:Lcom/android/contacts/detail/RawContactAdapter;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 362
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->val$adapter:Lcom/android/contacts/detail/RawContactAdapter;

    invoke-virtual {v2, p3}, Lcom/android/contacts/detail/RawContactAdapter;->getItem(I)Lcom/android/contacts/detail/RawContactAdapter$RawContact;

    move-result-object v0

    .line 363
    .local v0, contact:Lcom/android/contacts/detail/RawContactAdapter$RawContact;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 364
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.UID"

    iget-wide v3, v0, Lcom/android/contacts/detail/RawContactAdapter$RawContact;->rawContactId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 365
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactsUtils;->processPackageScope(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 366
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 367
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment$2;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 368
    return-void
.end method
