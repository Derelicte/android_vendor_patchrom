.class public Lcom/miui/player/ui/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/UIHelper$ListViewPositionWrap;
    }
.end annotation


# static fields
.field static final SD_ERROR_INDICATORS:[I

.field static final SD_USABLE_INDICATORS:[I

.field private static final TAG:Ljava/lang/String;

.field private static mLastSdStatus:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 46
    const-class v0, Lcom/miui/player/ui/UIHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/UIHelper;->TAG:Ljava/lang/String;

    .line 126
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/UIHelper;->SD_ERROR_INDICATORS:[I

    .line 133
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/player/ui/UIHelper;->SD_USABLE_INDICATORS:[I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/miui/player/ui/UIHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 229
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/miui/player/ui/UIHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    sput-object v0, Lcom/miui/player/ui/UIHelper;->sFormatter:Ljava/util/Formatter;

    .line 346
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/miui/player/ui/UIHelper;->sTimeArgs:[Ljava/lang/Object;

    return-void

    .line 126
    nop

    :array_0
    .array-data 0x4
        0x8ft 0x0t 0xct 0x7ft
        0x8et 0x0t 0xct 0x7ft
        0x8dt 0x0t 0xct 0x7ft
        0x99t 0x0t 0xct 0x7ft
    .end array-data

    .line 133
    :array_1
    .array-data 0x4
        0xat 0x0t 0x2t 0x1t
        0x5bt 0x0t 0xct 0x7ft
        0x9t 0x0t 0xct 0x7ft
        0x9at 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static addLayoutMargins(Landroid/view/View;IIII)Z
    .locals 3
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 414
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 415
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 416
    .local v0, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 417
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, p2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 418
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, p3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 419
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, p4

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 421
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    const/4 v2, 0x1

    .line 425
    .end local v0           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static addSubsequentAnimation(Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .parameter "first"
    .parameter "view"
    .parameter "second"
    .parameter "l"

    .prologue
    .line 441
    new-instance v0, Lcom/miui/player/ui/UIHelper$1;

    invoke-direct {v0, p3, p1, p2}, Lcom/miui/player/ui/UIHelper$1;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 468
    return-void
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    const v0, 0x7f08004b

    .line 157
    :goto_1
    const-string v3, "shared"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unmounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 159
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    const v0, 0x7f080049

    move v1, v0

    .line 183
    :goto_2
    sget-object v3, Lcom/miui/player/ui/UIHelper;->SD_ERROR_INDICATORS:[I

    array-length v4, v3

    move v0, v2

    :goto_3
    if-ge v0, v4, :cond_b

    aget v5, v3, v0

    .line 184
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 185
    if-eqz v5, :cond_3

    .line 186
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 154
    :cond_4
    const v0, 0x7f08004c

    goto :goto_1

    .line 162
    :cond_5
    const v0, 0x7f08004a

    move v1, v0

    goto :goto_2

    .line 164
    :cond_6
    const-string v3, "removed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 165
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    const v0, 0x7f080047

    move v1, v0

    goto :goto_2

    .line 168
    :cond_7
    const v0, 0x7f080048

    move v1, v0

    goto :goto_2

    .line 170
    :cond_8
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 175
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 176
    const-class v3, Lcom/miui/player/ui/ScanningProgress;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    const/16 v3, 0xb

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v0

    .line 178
    goto :goto_2

    :cond_9
    sget-object v3, Lcom/miui/player/ui/UIHelper;->mLastSdStatus:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 179
    sput-object v1, Lcom/miui/player/ui/UIHelper;->mLastSdStatus:Ljava/lang/String;

    .line 180
    sget-object v3, Lcom/miui/player/ui/UIHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sd card: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v1, v0

    goto :goto_2

    .line 190
    :cond_b
    sget-object v3, Lcom/miui/player/ui/UIHelper;->SD_USABLE_INDICATORS:[I

    array-length v4, v3

    move v0, v2

    :goto_4
    if-ge v0, v4, :cond_d

    aget v2, v3, v0

    .line 191
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_c

    .line 193
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 197
    :cond_d
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 234
    sget-object v0, Lcom/miui/player/ui/UIHelper;->sFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    sget-object v0, Lcom/miui/player/ui/UIHelper;->sFormatter:Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDescript(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "ar"
    .parameter "al"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 306
    invoke-static {p0, p1}, Lcom/miui/player/meta/MetaManager;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 307
    invoke-static {p0, p2}, Lcom/miui/player/meta/MetaManager;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 308
    const-string v2, ""

    .line 309
    .local v2, showName:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 310
    .local v1, hasArtist:Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 311
    .local v0, hasAlbum:Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    :cond_0
    :goto_2
    return-object v2

    .end local v0           #hasAlbum:Z
    .end local v1           #hasArtist:Z
    :cond_1
    move v1, v4

    .line 309
    goto :goto_0

    .restart local v1       #hasArtist:Z
    :cond_2
    move v0, v4

    .line 310
    goto :goto_1

    .line 313
    .restart local v0       #hasAlbum:Z
    :cond_3
    if-eqz v1, :cond_4

    .line 314
    move-object v2, p1

    goto :goto_2

    .line 315
    :cond_4
    if-eqz v0, :cond_0

    .line 316
    move-object v2, p2

    goto :goto_2
.end method

.method public static getDisplayFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "raw"

    .prologue
    .line 482
    const-string v0, "/mnt/"

    .line 483
    .local v0, PREFIX:Ljava/lang/String;
    const-string v1, "/mnt/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    const-string v1, "/mnt/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 487
    :cond_0
    return-object p0
.end method

.method public static getListViewHeaderCount(Landroid/widget/AdapterView;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 472
    check-cast p0, Landroid/widget/ListView;

    .end local p0           #v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 475
    :goto_0
    return v0

    .restart local p0       #v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 6
    .parameter "a"

    .prologue
    .line 204
    sget-object v0, Lcom/miui/player/ui/UIHelper;->SD_ERROR_INDICATORS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 205
    .local v2, id:I
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 206
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 207
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v2           #id:I
    .end local v4           #v:Landroid/view/View;
    :cond_1
    sget-object v0, Lcom/miui/player/ui/UIHelper;->SD_USABLE_INDICATORS:[I

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget v2, v0, v1

    .line 212
    .restart local v2       #id:I
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 213
    .restart local v4       #v:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 214
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    .end local v2           #id:I
    .end local v4           #v:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public static makeAlbumsLabel(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "artist"

    .prologue
    const/high16 v10, 0x7f09

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 247
    const/4 v4, 0x0

    .line 248
    .local v4, songs_albums:Ljava/lang/String;
    invoke-static {p3}, Lcom/miui/player/meta/MetaManager;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 250
    .local v2, isUnknown:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 251
    .local v3, r:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v3, v10, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, format:Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 263
    :goto_0
    return-object v4

    .line 255
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    const v6, 0x7f090001

    invoke-virtual {v3, v6, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1       #format:Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, album:Ljava/lang/String;
    invoke-virtual {v3, v10, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, track:Ljava/lang/String;
    const v6, 0x7f080008

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    aput-object v5, v6, v9

    invoke-static {v1, v6}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v1, songs_albums:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 280
    .local v0, r:Landroid/content/res/Resources;
    if-nez p3, :cond_0

    .line 281
    const v2, 0x7f090001

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const v2, 0x7f0800be

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    const/high16 v2, 0x7f09

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static makeHeaderView(Landroid/content/Context;III)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "headerId"
    .parameter "iconId"
    .parameter "textId"

    .prologue
    .line 298
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0c004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    const v1, 0x7f0c006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 302
    return-object v0
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "sub"
    .parameter "extras"

    .prologue
    .line 121
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/player/ui/UIHelper;->makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;J)V

    .line 122
    return-void
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/Menu;Landroid/content/Intent;J)V
    .locals 8
    .parameter "context"
    .parameter "sub"
    .parameter "extras"
    .parameter "excludeId"

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 90
    const/4 v0, 0x1

    const/16 v1, 0xc

    const/4 v4, 0x0

    const v5, 0x7f080056

    invoke-interface {p1, v0, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 91
    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v4, 0x0

    const v5, 0x7f080057

    invoke-interface {p1, v0, v1, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 93
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 98
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "(%s!=\'\') AND (%s=%d) AND (%s!=%d)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "list_type"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "_id"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 106
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v7, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {v7, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 111
    :cond_0
    const-string v0, "dst_playlist"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v7, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 112
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0, v1, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v7           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_2
    return-void
.end method

.method public static makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "secs"
    .parameter "formatId"

    .prologue
    const-wide/16 v3, 0xe10

    const-wide/16 v5, 0x3c

    .line 348
    cmp-long v2, p1, v3

    if-gez v2, :cond_0

    .end local p3
    :goto_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, durationformat:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/ui/UIHelper;->sTimeArgs:[Ljava/lang/Object;

    .line 350
    .local v1, timeArgs:[Ljava/lang/Object;
    const/4 v2, 0x0

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 351
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 352
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 353
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 354
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 356
    invoke-static {v0, v1}, Lcom/miui/player/ui/UIHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 348
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    .restart local p3
    :cond_0
    const p3, 0x7f0800c1

    goto :goto_0
.end method

.method public static notifyAddToPlaylist(Landroid/content/Context;JI)V
    .locals 6
    .parameter "context"
    .parameter "playlistId"
    .parameter "size"

    .prologue
    const/4 v5, 0x0

    .line 220
    invoke-static {p0, p1, p2}, Lcom/miui/player/provider/FavoriteCache;->isFavoritePlaylistId(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f09000e

    .line 222
    .local v1, msgId:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, message:Ljava/lang/String;
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 226
    return-void

    .line 220
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #msgId:I
    :cond_0
    const v1, 0x7f09000d

    goto :goto_0
.end method

.method public static sendByChooser(Landroid/content/Context;J)Z
    .locals 12
    .parameter "context"
    .parameter "audioId"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 323
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 324
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v11

    const-string v0, "_size"

    aput-object v0, v2, v6

    .local v2, proj:[Ljava/lang/String;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 325
    invoke-static/range {v0 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 326
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v6, v11

    .line 342
    :goto_0
    return v6

    .line 331
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 334
    const/4 v0, 0x0

    const-string v3, "audio/*"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/xiaomi/common/util/Strings;->formatSize(J)Ljava/lang/String;

    move-result-object v9

    .line 336
    .local v9, size:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v9, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, title:Ljava/lang/String;
    invoke-static {v8, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #size:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 336
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #size:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 340
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #size:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setChildEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3
    .parameter "parent"
    .parameter "enabled"

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 292
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 293
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 12
    .parameter "context"
    .parameter "id"

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 366
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 368
    .local v10, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 369
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "is_alarm"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 384
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 388
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 391
    const-string v0, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 392
    const v0, 0x7f080051

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, message:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v8, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    .end local v8           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 397
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 400
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v7

    .line 374
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    sget-object v0, Lcom/miui/player/ui/UIHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set ringtone flag for id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v11       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 397
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static unregistBroadcastReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    .locals 1
    .parameter "context"
    .parameter "receiver"

    .prologue
    .line 404
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    .line 406
    :catch_0
    move-exception v0

    .line 409
    const/4 v0, 0x0

    goto :goto_0
.end method
