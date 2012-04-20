.class Lcom/android/contacts/activities/ContactSelectionActivity$2;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v1, v1, Lcom/android/contacts/list/ContactMultiPickerFragment;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    iget-object v0, v1, Lcom/android/contacts/activities/ContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/android/contacts/list/ContactMultiPickerFragment;

    .line 377
    .local v0, fragment:Lcom/android/contacts/list/ContactMultiPickerFragment;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactMultiPickerFragment;->getCheckedContacts()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnMultiContactPickerResult([Ljava/lang/String;)V

    .line 383
    .end local v0           #fragment:Lcom/android/contacts/list/ContactMultiPickerFragment;
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ContactSelectionActivity;->setResult(I)V

    .line 380
    iget-object v1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$2;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactSelectionActivity;->finish()V

    goto :goto_0
.end method
