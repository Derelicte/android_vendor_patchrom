.class Lcom/miui/player/ui/MusicPicker$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mIdIdx:I

.field final mListView:Landroid/widget/ListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/ui/MusicPicker;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "listView"
    .parameter "layout"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    .line 217
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 218
    iput-object p3, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 219
    const v0, 0x7f08004d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 220
    const v0, 0x7f08004e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 221
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;

    .line 261
    .local v6, vh:Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;
    iget v7, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mTitleIdx:I

    iget-object v9, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v7, v9}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 262
    iget-object v7, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v9, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v9, v9, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v10, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v10, v10, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v7, v9, v8, v10}, Landroid/widget/TextView;->setText([CII)V

    .line 264
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 265
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v8, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 267
    iget v7, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 269
    iget-object v7, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :goto_0
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget v7, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 275
    if-eqz v5, :cond_0

    const-string v7, "<unknown>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 276
    :cond_0
    iget-object v7, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 281
    .local v4, len:I
    iget-object v7, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v7, v7

    if-ge v7, v4, :cond_1

    .line 282
    new-array v7, v4, [C

    iput-object v7, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 284
    :cond_1
    iget-object v7, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v0, v8, v4, v7, v8}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 285
    iget-object v7, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v9, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v7, v9, v8, v4}, Landroid/widget/TextView;->setText([CII)V

    .line 291
    iget v7, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mIdIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 292
    .local v1, id:J
    iget-object v9, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    iget-wide v10, v7, Lcom/miui/player/ui/MusicPicker;->mSelectedId:J

    cmp-long v7, v1, v10

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 299
    iget-object v3, v6, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 300
    .local v3, iv:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    iget-wide v9, v7, Lcom/miui/player/ui/MusicPicker;->mPlayingId:J

    cmp-long v7, v1, v9

    if-nez v7, :cond_6

    .line 301
    invoke-static {}, Lcom/miui/player/service/ServiceHelper;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 302
    const v7, 0x7f02004d

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    :goto_3
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    :goto_4
    return-void

    .line 271
    .end local v1           #id:J
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #len:I
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .restart local v1       #id:J
    .restart local v4       #len:I
    :cond_4
    move v7, v8

    .line 292
    goto :goto_2

    .line 304
    .restart local v3       #iv:Landroid/widget/ImageView;
    :cond_5
    const v7, 0x7f02004c

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 308
    :cond_6
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 323
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    iput-object p1, v0, Lcom/miui/player/ui/MusicPicker;->mCursor:Landroid/database/Cursor;

    .line 324
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicPicker;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-static {v0}, Lcom/miui/player/ui/UIHelper;->displayDatabaseError(Landroid/app/Activity;)V

    .line 326
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicPicker;->closeContextMenu()V

    .line 331
    :goto_0
    if-eqz p1, :cond_0

    .line 333
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mIdIdx:I

    .line 334
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mTitleIdx:I

    .line 335
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mArtistIdx:I

    .line 336
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mAlbumIdx:I

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-virtual {v0}, Lcom/miui/player/ui/MusicPicker;->makeListShown()V

    .line 342
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    invoke-static {v0}, Lcom/miui/player/ui/UIHelper;->hideDatabaseError(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;-><init>(Lcom/miui/player/ui/MusicPicker$TrackListAdapter;)V

    .line 247
    .local v1, vh:Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;
    const v2, 0x7f0c0035

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 248
    const v2, 0x7f0c0036

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 249
    const v2, 0x7f0c0067

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 250
    const v2, 0x7f0c000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 251
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 252
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/miui/player/ui/MusicPicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 254
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->mLoading:Z

    .line 229
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 230
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/MusicPicker;

    iget-object v1, v1, Lcom/miui/player/ui/MusicPicker;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    return-void

    .line 229
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
