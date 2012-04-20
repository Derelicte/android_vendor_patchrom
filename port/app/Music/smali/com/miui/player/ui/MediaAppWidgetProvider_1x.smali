.class public Lcom/miui/player/ui/MediaAppWidgetProvider_1x;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider_1x.java"


# static fields
.field private static sAlbumChange:Z

.field private static sCurrentAlbum:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sCurrentAlbum:Landroid/graphics/Bitmap;

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "views"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 45
    .local v1, gm:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 46
    .local v0, appWidgetIds:[I
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v1, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 49
    :cond_0
    return-void
.end method

.method private updateAlbum(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "views"
    .parameter "intent"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070019

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 103
    .local v7, size:I
    const-string v9, "display_album"

    invoke-static {p1, v9}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, bm:Landroid/graphics/Bitmap;
    sget-boolean v9, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    if-nez v9, :cond_1

    .line 106
    sget-object v0, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sCurrentAlbum:Landroid/graphics/Bitmap;

    .line 131
    :goto_0
    if-eqz v0, :cond_5

    .line 132
    const v9, 0x7f0c0001

    invoke-virtual {p2, v9, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 133
    const v9, 0x7f0c0001

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 134
    const v9, 0x7f0c0002

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 135
    const/high16 v9, 0x7f0c

    const/16 v10, 0x8

    invoke-virtual {p2, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 142
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-void

    .line 108
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    const-string v9, "album_path"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, path:Ljava/lang/String;
    const-string v9, "album_uri"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 110
    .local v8, uri:Landroid/net/Uri;
    const-string v9, "android_album"

    invoke-static {p1, v9}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    invoke-static {p1, v8, v7, v7}, Lcom/miui/player/meta/AlbumManager;->getAlbumBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    :cond_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    .line 114
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 116
    invoke-static {v4, v7, v7}, Lcom/miui/player/meta/AlbumManager;->getArtistQuickFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .end local v3           #file:Ljava/io/File;
    :cond_3
    if-eqz v0, :cond_4

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 121
    .local v6, res:Landroid/content/res/Resources;
    const v9, 0x7f07001a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 122
    .local v5, radius:I
    const v9, 0x7f060023

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 123
    .local v2, color:I
    int-to-float v9, v5

    invoke-static {v0, v9, v2}, Lcom/xiaomi/common/util/BitmapHelper;->clipRoundCornerBitmap(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    .local v1, cliped:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    move-object v0, v1

    .line 127
    .end local v1           #cliped:Landroid/graphics/Bitmap;
    .end local v2           #color:I
    .end local v5           #radius:I
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_4
    const/4 v9, 0x0

    sput-boolean v9, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    .line 128
    sput-object v0, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sCurrentAlbum:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 137
    .end local v4           #path:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_5
    const v9, 0x7f0c0002

    const/16 v10, 0x8

    invoke-virtual {p2, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 138
    const v9, 0x7f0c0001

    const/16 v10, 0x8

    invoke-virtual {p2, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 139
    const/high16 v9, 0x7f0c

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method


# virtual methods
.method public hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 56
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 57
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 58
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.miui.player.init_gadget"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v8, updateIntent:Landroid/content/Intent;
    invoke-virtual {p1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 73
    .end local v8           #updateIntent:Landroid/content/Intent;
    :cond_2
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.miui.player.metachanged"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :cond_3
    const-string v0, "other"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, extra:Ljava/lang/String;
    const-string v0, "meta_changed_buffer"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meta_changed_lyric"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "meta_changed_track"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "meta_changed_album"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    .line 88
    :cond_5
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/high16 v9, 0x7f03

    invoke-direct {v1, v0, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 89
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->updateAlbum(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 90
    const-string v0, "album"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, albumName:Ljava/lang/String;
    const-string v0, "track"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, trackName:Ljava/lang/String;
    const-string v0, "artist"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, artistName:Ljava/lang/String;
    const-string v0, "playing"

    const/4 v9, 0x0

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, isPlaying:Z
    move-object v0, p1

    .line 95
    invoke-static/range {v0 .. v5}, Lcom/miui/player/ui/controller/WidgetController_1x;->updateViews(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    invoke-static {p1, v1, v5}, Lcom/miui/player/ui/controller/WidgetController_1x;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 97
    invoke-direct {p0, p1, v1}, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 36
    invoke-static {}, Lcom/miui/player/util/Utils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/player/ui/MediaAppWidgetProvider_1x;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.init_gadget"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, updateIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    return-void
.end method
