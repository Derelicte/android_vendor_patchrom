.class public Lcom/miui/notes/ui/NotesListAdapter;
.super Landroid/widget/CursorAdapter;
.source "NotesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    }
.end annotation


# instance fields
.field private mChoiceMode:Z

.field private mContext:Landroid/content/Context;

.field private mNotesCount:I

.field private mSelectedIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    .line 31
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mContext:Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    .line 33
    return-void
.end method

.method private calcNotesCount()V
    .locals 4

    .prologue
    .line 152
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    .line 153
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 154
    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 155
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 156
    invoke-static {v0}, Lcom/miui/notes/ui/NoteItemData;->getNoteType(Landroid/database/Cursor;)I

    move-result v2

    if-nez v2, :cond_0

    .line 157
    iget v2, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    .line 153
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const-string v2, "NotesListAdapter"

    const-string v3, "Invalid cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0           #c:Landroid/database/Cursor;
    :cond_2
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 42
    instance-of v1, p1, Lcom/miui/notes/ui/NotesListItem;

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Lcom/miui/notes/ui/NoteItemData;

    invoke-direct {v0, p2, p3}, Lcom/miui/notes/ui/NoteItemData;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 44
    .local v0, itemData:Lcom/miui/notes/ui/NoteItemData;
    check-cast p1, Lcom/miui/notes/ui/NotesListItem;

    .end local p1
    iget-boolean v1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mChoiceMode:Z

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NotesListAdapter;->isSelectedItem(I)Z

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/miui/notes/ui/NotesListItem;->bind(Landroid/content/Context;Lcom/miui/notes/ui/NoteItemData;ZZ)V

    .line 47
    .end local v0           #itemData:Lcom/miui/notes/ui/NoteItemData;
    :cond_0
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 148
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListAdapter;->calcNotesCount()V

    .line 149
    return-void
.end method

.method public getSelectedCount()I
    .locals 5

    .prologue
    .line 113
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 114
    .local v2, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Boolean;>;"
    if-nez v2, :cond_1

    .line 115
    const/4 v0, 0x0

    .line 124
    :cond_0
    return v0

    .line 117
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, count:I
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const/4 v4, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v4, v3, :cond_2

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedItemIds()Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 75
    .local v2, itemSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 76
    .local v3, position:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 77
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 78
    .local v1, id:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 79
    const-string v4, "NotesListAdapter"

    const-string v5, "Wrong item id, should not happen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v1           #id:Ljava/lang/Long;
    .end local v3           #position:Ljava/lang/Integer;
    :cond_2
    return-object v2
.end method

.method public getSelectedWidget()Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v3, itemSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 92
    .local v4, position:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 93
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/notes/ui/NotesListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 94
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 95
    new-instance v5, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;

    invoke-direct {v5}, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;-><init>()V

    .line 96
    .local v5, widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    new-instance v2, Lcom/miui/notes/ui/NoteItemData;

    iget-object v6, p0, Lcom/miui/notes/ui/NotesListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v0}, Lcom/miui/notes/ui/NoteItemData;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 97
    .local v2, item:Lcom/miui/notes/ui/NoteItemData;
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getWidgetId()I

    move-result v6

    iput v6, v5, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    .line 98
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getWidgetType()I

    move-result v6

    iput v6, v5, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    .line 99
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v2           #item:Lcom/miui/notes/ui/NoteItemData;
    .end local v5           #widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    :cond_1
    const-string v6, "NotesListAdapter"

    const-string v7, "Invalid cursor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v3, 0x0

    .line 109
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #itemSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    .end local v4           #position:Ljava/lang/Integer;
    :cond_2
    return-object v3
.end method

.method public isAllSelected()Z
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListAdapter;->getSelectedCount()I

    move-result v0

    .line 129
    .local v0, checkedCount:I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mNotesCount:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInChoiceMode()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mChoiceMode:Z

    return v0
.end method

.method public isSelectedItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 37
    new-instance v0, Lcom/miui/notes/ui/NotesListItem;

    invoke-direct {v0, p1}, Lcom/miui/notes/ui/NotesListItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 142
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListAdapter;->calcNotesCount()V

    .line 143
    return-void
.end method

.method public selectAll(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/miui/notes/ui/NoteItemData;->getNoteType(Landroid/database/Cursor;)I

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/miui/notes/ui/NotesListAdapter;->setCheckedItem(IZ)V

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public setCheckedItem(IZ)V
    .locals 3
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.method public setChoiceMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListAdapter;->mSelectedIndex:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    iput-boolean p1, p0, Lcom/miui/notes/ui/NotesListAdapter;->mChoiceMode:Z

    .line 61
    return-void
.end method
