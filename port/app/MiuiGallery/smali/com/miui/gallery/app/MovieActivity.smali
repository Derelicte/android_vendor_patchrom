.class public Lcom/miui/gallery/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"


# instance fields
.field private mFinishOnCompletion:Z

.field private mPlayer:Lcom/miui/gallery/app/MoviePlayer;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/miui/gallery/app/MovieActivity;->mFinishOnCompletion:Z

    return v0
.end method

.method private initializeActionBar(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v0, 0x4

    .line 88
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 89
    .local v6, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v6, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 91
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 93
    if-nez v9, :cond_1

    .line 94
    const/4 v7, 0x0

    .line 96
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 98
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 104
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    :cond_2
    return-void

    .line 101
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 102
    .local v8, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v0, "MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot get title from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/miui/gallery/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/MovieActivity;->requestWindowFeature(I)Z

    .line 55
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/MovieActivity;->requestWindowFeature(I)Z

    .line 57
    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/MovieActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, rootView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 60
    .local v7, intent:Landroid/content/Intent;
    invoke-direct {p0, v7}, Lcom/miui/gallery/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V

    .line 61
    const-string v0, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/app/MovieActivity;->mFinishOnCompletion:Z

    .line 63
    new-instance v0, Lcom/miui/gallery/app/MovieActivity$1;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iget-boolean v1, p0, Lcom/miui/gallery/app/MovieActivity;->mFinishOnCompletion:Z

    if-nez v1, :cond_1

    :goto_0
    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/app/MovieActivity$1;-><init>(Lcom/miui/gallery/app/MovieActivity;Landroid/view/View;Lcom/miui/gallery/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    iput-object v0, p0, Lcom/miui/gallery/app/MovieActivity;->mPlayer:Lcom/miui/gallery/app/MoviePlayer;

    .line 72
    const-string v0, "android.intent.extra.screenOrientation"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "android.intent.extra.screenOrientation"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 76
    .local v8, orientation:I
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v8, v0, :cond_0

    .line 77
    invoke-virtual {p0, v8}, Lcom/miui/gallery/app/MovieActivity;->setRequestedOrientation(I)V

    .line 80
    .end local v8           #orientation:I
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 81
    .local v9, win:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 82
    .local v10, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v0, 0x0

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 83
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 84
    invoke-virtual {v9, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    return-void

    .line 63
    .end local v9           #win:Landroid/view/Window;
    .end local v10           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 114
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f100006

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    invoke-static {p1}, Lcom/miui/gallery/app/GalleryActionBar;->initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v1

    .line 117
    .local v1, provider:Landroid/widget/ShareActionProvider;
    if-eqz v1, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/miui/gallery/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 124
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/gallery/app/MovieActivity;->mPlayer:Lcom/miui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/miui/gallery/app/MoviePlayer;->onDestroy()V

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 173
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/gallery/app/MovieActivity;->mPlayer:Lcom/miui/gallery/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/gallery/app/MovieActivity;->mPlayer:Lcom/miui/gallery/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gallery/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/app/MovieActivity;->finish()V

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miui/gallery/app/MovieActivity;->mPlayer:Lcom/miui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/miui/gallery/app/MoviePlayer;->onPause()V

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/gallery/app/MovieActivity;->mPlayer:Lcom/miui/gallery/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/miui/gallery/app/MoviePlayer;->onResume()V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lcom/miui/gallery/app/MovieActivity;->mPlayer:Lcom/miui/gallery/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 138
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 142
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 149
    return-void
.end method
