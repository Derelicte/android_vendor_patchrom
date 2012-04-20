.class final Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PickerGroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/picker/PickerGroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/CursorTreeAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CursorTreeAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 152
    iput-object p2, p0, Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;->mAdapter:Landroid/widget/CursorTreeAdapter;

    .line 153
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 167
    .end local p2
    :goto_0
    return-void

    .line 160
    .restart local p2
    :pswitch_0
    :try_start_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 161
    .local v1, groupPosition:I
    iget-object v2, p0, Lcom/android/contacts/picker/PickerGroupsFragment$QueryHandler;->mAdapter:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v2, v1, p3}, Landroid/widget/CursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v1           #groupPosition:I
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/contacts/picker/PickerGroupsFragment;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parent cursor is invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
