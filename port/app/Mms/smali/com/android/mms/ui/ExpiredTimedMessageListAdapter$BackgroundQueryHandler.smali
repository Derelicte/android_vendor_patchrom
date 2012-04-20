.class final Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ExpiredTimedMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    .line 220
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 221
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/ExpiredTimedMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 228
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
