.class public Lcom/miui/player/model/TrackPickerForPlaylistAdapter;
.super Lcom/miui/player/model/SectionCursorAdapter;
.source "TrackPickerForPlaylistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;,
        Lcom/miui/player/model/TrackPickerForPlaylistAdapter$TrackConverterForPicker;
    }
.end annotation


# static fields
.field public static final TRACK_PICKER_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

.field private mArtistIdx:I

.field private mAudioIdIdx:I

.field private mMaxSelectableCount:I

.field private mPlaylistId:J

.field private final mPreviousAudioList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedAudioList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->TRACK_PICKER_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/TrackPickerForPlaylist;IJLandroid/database/Cursor;[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;)V
    .locals 8
    .parameter "context"
    .parameter "activity"
    .parameter "layout"
    .parameter "playlistId"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "fastIndexer"

    .prologue
    .line 75
    const-string v7, "title"

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lcom/miui/player/model/SectionCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/miui/player/ui/view/AlphabetFastIndexer;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    .line 76
    iput-object p2, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

    .line 77
    iput-wide p4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPlaylistId:J

    .line 78
    invoke-direct {p0, p6}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 79
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mTitleIdx:I

    .line 84
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mArtistIdx:I

    .line 85
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mAudioIdIdx:I

    .line 87
    :cond_0
    return-void
.end method

.method private updatePrevAudioList()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, audioIdList:[J
    iget-wide v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPlaylistId:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

    iget-wide v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPlaylistId:J

    invoke-static {v3, v4, v5}, Lcom/miui/player/provider/PlaylistHelper;->getLocalTrackListForPlaylist(Landroid/content/Context;J)[J

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    .line 193
    .local v2, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v0, :cond_2

    .line 194
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 195
    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    iget-wide v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPlaylistId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 189
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->getQueue()[J

    move-result-object v0

    goto :goto_0

    .line 198
    .restart local v2       #list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;

    .line 107
    .local v2, vh:Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->trackName:Landroid/widget/TextView;

    iget v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mTitleIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->artistName:Landroid/widget/TextView;

    iget v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mArtistIdx:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mAudioIdIdx:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 111
    .local v0, audioId:J
    iget-object v3, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 113
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 116
    iget-object v3, v2, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

    invoke-virtual {v0}, Lcom/miui/player/ui/TrackPickerForPlaylist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 p1, 0x0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mActivity:Lcom/miui/player/ui/TrackPickerForPlaylist;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/TrackPickerForPlaylist;->swapCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 131
    if-eqz p1, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->updatePrevAudioList()V

    .line 133
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mMaxSelectableCount:I

    .line 137
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/player/model/SectionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 138
    return-void
.end method

.method public clearSelectAudioList()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 159
    return-void
.end method

.method public getMaxSelectableCount()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mMaxSelectableCount:I

    return v0
.end method

.method public getSelectAudioList()[J
    .locals 9

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 206
    .local v3, cursor:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 207
    sget-object v2, Lcom/miui/player/util/Utils;->LONG_EMPTY_ARRAY:[J

    .line 222
    :goto_0
    return-object v2

    .line 210
    :cond_0
    iget-object v6, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    .line 211
    .local v6, list:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v8

    new-array v2, v8, [J

    .line 212
    .local v2, audioList:[J
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 214
    .local v7, position:I
    const/4 v4, 0x0

    .line 215
    .local v4, index:I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    .line 216
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 217
    .local v0, audioId:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 218
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aput-wide v0, v2, v4

    move v4, v5

    .line 215
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 221
    .end local v0           #audioId:J
    :cond_2
    invoke-interface {v3, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public getSelectedSize()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public isSelectAll()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mMaxSelectableCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/miui/player/model/SectionCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;-><init>()V

    .line 94
    .local v1, vh:Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;
    const v2, 0x7f0c00aa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->trackName:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f0c0083

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->artistName:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f0c00a9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 97
    iget-object v2, v1, Lcom/miui/player/model/TrackPickerForPlaylistAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    return-object v0
.end method

.method public selectAll()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 167
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 181
    :goto_0
    return v6

    .line 171
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 172
    .local v3, position:I
    iget-object v4, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mPreviousAudioList:Ljava/util/HashSet;

    .line 173
    .local v4, prevList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    .line 174
    .local v5, selected:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 175
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 176
    .local v0, audioId:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 177
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 180
    .end local v0           #audioId:J
    :cond_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 181
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public toggle(J)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, state:Z
    iget-object v0, p0, Lcom/miui/player/model/TrackPickerForPlaylistAdapter;->mSelectedAudioList:Ljava/util/HashSet;

    .line 147
    .local v0, selected:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 149
    const/4 v1, 0x0

    .line 154
    :goto_0
    return v1

    .line 151
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    const/4 v1, 0x1

    goto :goto_0
.end method
