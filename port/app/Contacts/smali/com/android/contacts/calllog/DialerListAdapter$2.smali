.class Lcom/android/contacts/calllog/DialerListAdapter$2;
.super Ljava/lang/Object;
.source "DialerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/DialerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/DialerListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/DialerListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/contacts/calllog/DialerListAdapter$2;->this$0:Lcom/android/contacts/calllog/DialerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 285
    .local v3, position:I
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListAdapter$2;->this$0:Lcom/android/contacts/calllog/DialerListAdapter;

    #getter for: Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/contacts/calllog/DialerListAdapter;->access$000(Lcom/android/contacts/calllog/DialerListAdapter;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListAdapter$2;->this$0:Lcom/android/contacts/calllog/DialerListAdapter;

    #getter for: Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/contacts/calllog/DialerListAdapter;->access$100(Lcom/android/contacts/calllog/DialerListAdapter;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, phoneNumber:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListAdapter$2;->this$0:Lcom/android/contacts/calllog/DialerListAdapter;

    #getter for: Lcom/android/contacts/calllog/DialerListAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/contacts/calllog/DialerListAdapter;->access$200(Lcom/android/contacts/calllog/DialerListAdapter;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 291
    .local v0, contactId:J
    iget-object v4, p0, Lcom/android/contacts/calllog/DialerListAdapter$2;->this$0:Lcom/android/contacts/calllog/DialerListAdapter;

    #calls: Lcom/android/contacts/calllog/DialerListAdapter;->handleDialerClick(Ljava/lang/String;J)V
    invoke-static {v4, v2, v0, v1}, Lcom/android/contacts/calllog/DialerListAdapter;->access$300(Lcom/android/contacts/calllog/DialerListAdapter;Ljava/lang/String;J)V

    goto :goto_0
.end method
