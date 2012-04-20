.class Lcom/android/mms/ui/SearchFragment$SearchAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field private mAddressPos:I

.field private mBodyPos:I

.field private mQueryString:Ljava/lang/String;

.field private mRowIdPos:I

.field private mThreadIdPos:I

.field final synthetic this$0:Lcom/android/mms/ui/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SearchFragment;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    .line 264
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 265
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 295
    const v7, 0x7f1000b6

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v2, v7

    check-cast v2, Landroid/widget/TextView;

    .line 296
    .local v2, name:Landroid/widget/TextView;
    const v7, 0x7f1000bb

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v4, v7

    check-cast v4, Landroid/widget/TextView;

    .line 297
    .local v4, number:Landroid/widget/TextView;
    const v7, 0x7f1000c1

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;

    move-object v6, v7

    check-cast v6, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;

    .line 299
    .local v6, snippet:Lcom/android/mms/ui/SearchFragment$TextViewSnippet;
    iget v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mAddressPos:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_1

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 302
    .local v1, contact:Lcom/android/mms/data/Contact;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getRealName()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, nameString:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, numberString:Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 305
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 307
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    :goto_3
    iget v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mBodyPos:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/mms/ui/SearchFragment$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void

    .line 300
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #nameString:Ljava/lang/String;
    .end local v5           #numberString:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 302
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 303
    .restart local v3       #nameString:Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_2

    .line 310
    .restart local v5       #numberString:Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 311
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .parameter "cursor"
    .parameter "query"

    .prologue
    .line 268
    iput-object p2, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    .line 269
    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mThreadIdPos:I

    .line 270
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mAddressPos:I

    .line 271
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mBodyPos:I

    .line 272
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mRowIdPos:I

    .line 274
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 275
    return-void
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 8
    .parameter "position"

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 284
    .local v0, cursor:Landroid/database/Cursor;
    iget v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mThreadIdPos:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 285
    .local v4, threadId:J
    iget v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mRowIdPos:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 287
    .local v2, rowid:J
    iget-object v6, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 288
    .local v1, onClickIntent:Landroid/content/Intent;
    const-string v6, "highlight"

    iget-object v7, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->mQueryString:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v6, "select_id"

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 290
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/mms/ui/SearchFragment$SearchAdapter;->this$0:Lcom/android/mms/ui/SearchFragment;

    #getter for: Lcom/android/mms/ui/SearchFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/SearchFragment;->access$200(Lcom/android/mms/ui/SearchFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 320
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040046

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 321
    .local v1, v:Landroid/view/View;
    return-object v1
.end method
