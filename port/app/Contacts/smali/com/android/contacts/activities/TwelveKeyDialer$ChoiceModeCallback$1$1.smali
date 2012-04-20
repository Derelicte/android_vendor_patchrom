.class Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;
.super Landroid/os/AsyncTask;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$2:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;)V
    .locals 1
    .parameter

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->this$2:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1619
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 1630
    const/4 v3, 0x0

    .local v3, start:I
    const/16 v0, 0x64

    .line 1631
    .local v0, end:I
    iget-object v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->this$2:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;

    iget-object v4, v4, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;->this$1:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    iget-object v4, v4, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mAdapter:Lcom/android/contacts/calllog/DialerListAdapter;
    invoke-static {v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$400(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/calllog/DialerListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->this$2:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;

    iget-object v5, v5, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;->this$1:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    iget-object v5, v5, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mList:Landroid/widget/EditableListView;
    invoke-static {v5}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$600(Lcom/android/contacts/activities/TwelveKeyDialer;)Landroid/widget/EditableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/calllog/DialerListAdapter;->getCheckedNumbers(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v1

    .line 1633
    .local v1, numbersArray:[Ljava/lang/String;
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1634
    array-length v4, v1

    if-le v0, v4, :cond_0

    array-length v0, v1

    .line 1635
    :cond_0
    const-string v4, "normalized_number"

    invoke-static {v4, v1, v3, v0}, Lcom/android/contacts/format/FormatUtils;->buildSelectionClause(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1637
    .local v2, selection:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->this$2:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;

    iget-object v4, v4, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;->this$1:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    iget-object v4, v4, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/contacts/activities/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1638
    move v3, v0

    .line 1639
    add-int/lit8 v0, v3, 0x64

    .line 1640
    goto :goto_0

    .line 1641
    .end local v2           #selection:Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1619
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1647
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->this$2:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;

    iget-object v0, v0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;->this$1:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->access$1800(Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1648
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->this$2:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;

    iget-object v0, v0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;->this$1:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    iget-object v0, v0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    const v1, 0x7f0b0204

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1650
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->this$2:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;

    iget-object v0, v0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;->this$1:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    iget-object v0, v0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    iget-object v1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->this$2:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;

    iget-object v1, v1, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1;->this$1:Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;

    iget-object v1, v1, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    const v2, 0x7f0b006b

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$ChoiceModeCallback$1$1;->progressDialog:Landroid/app/ProgressDialog;

    .line 1626
    return-void
.end method
