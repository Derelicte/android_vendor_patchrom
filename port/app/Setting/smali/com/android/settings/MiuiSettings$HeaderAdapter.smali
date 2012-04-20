.class Lcom/android/settings/MiuiSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccelerometerEnabler:Lcom/android/settings/display/AccelerometerEnabler;

.field private final mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

.field private final mGpsEnabler:Lcom/android/settings/GpsEnabler;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 413
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 414
    new-instance v0, Lcom/android/settings/MiuiAirplaneModeEnabler;

    new-instance v1, Lmiui/widget/SlidingButton;

    invoke-direct {v1, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/MiuiAirplaneModeEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    .line 415
    new-instance v0, Lcom/android/settings/display/AccelerometerEnabler;

    new-instance v1, Lmiui/widget/SlidingButton;

    invoke-direct {v1, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/display/AccelerometerEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAccelerometerEnabler:Lcom/android/settings/display/AccelerometerEnabler;

    .line 416
    new-instance v0, Lcom/android/settings/GpsEnabler;

    new-instance v1, Lmiui/widget/SlidingButton;

    invoke-direct {v1, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/GpsEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mGpsEnabler:Lcom/android/settings/GpsEnabler;

    .line 417
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 370
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    .line 372
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0801d0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0801ce

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0801d6

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 375
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 377
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public getAirplaneModeEnabler()Lcom/android/settings/MiuiAirplaneModeEnabler;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 384
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const v8, 0x1020016

    const v7, 0x1020010

    const/4 v9, 0x0

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 423
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 424
    .local v1, headerType:I
    const/4 v4, 0x0

    .line 426
    .local v4, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 427
    new-instance v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;

    invoke-direct {v2, v10}, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/MiuiSettings$1;)V

    .line 428
    .local v2, holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 457
    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 464
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 494
    :goto_2
    return-object v4

    .line 430
    :pswitch_0
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1010208

    invoke-direct {v4, v5, v10, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v4       #view:Landroid/view/View;
    move-object v5, v4

    .line 432
    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 436
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04004d

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 438
    const v5, 0x7f080022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 439
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 441
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 443
    const v5, 0x7f0800d5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lmiui/widget/SlidingButton;

    iput-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    goto :goto_0

    .line 447
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x3030027

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 450
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 451
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 453
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 459
    .end local v2           #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    :cond_0
    move-object v4, p2

    .line 460
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;

    .restart local v2       #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    goto :goto_1

    .line 466
    :pswitch_3
    iget-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 471
    :pswitch_4
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0801d0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 472
    iget-object v5, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    iget-object v6, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v5, v6}, Lcom/android/settings/MiuiAirplaneModeEnabler;->setSlidingButton(Lmiui/widget/SlidingButton;)V

    .line 482
    :cond_1
    :goto_3
    :pswitch_5
    iget-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v6, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    iget-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 485
    .local v3, summary:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 486
    iget-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    iget-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 473
    .end local v3           #summary:Ljava/lang/CharSequence;
    :cond_2
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0801ce

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 474
    iget-object v5, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAccelerometerEnabler:Lcom/android/settings/display/AccelerometerEnabler;

    iget-object v6, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v5, v6}, Lcom/android/settings/display/AccelerometerEnabler;->setSlidingButton(Lmiui/widget/SlidingButton;)V

    goto :goto_3

    .line 475
    :cond_3
    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v7, 0x7f0801d6

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 476
    iget-object v5, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mGpsEnabler:Lcom/android/settings/GpsEnabler;

    iget-object v6, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v5, v6}, Lcom/android/settings/GpsEnabler;->setSlidingButton(Lmiui/widget/SlidingButton;)V

    goto :goto_3

    .line 489
    .restart local v3       #summary:Ljava/lang/CharSequence;
    :cond_4
    iget-object v5, v2, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 464
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MiuiAirplaneModeEnabler;->pause()V

    .line 505
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAccelerometerEnabler:Lcom/android/settings/display/AccelerometerEnabler;

    invoke-virtual {v0}, Lcom/android/settings/display/AccelerometerEnabler;->pause()V

    .line 506
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mGpsEnabler:Lcom/android/settings/GpsEnabler;

    invoke-virtual {v0}, Lcom/android/settings/GpsEnabler;->pause()V

    .line 507
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MiuiAirplaneModeEnabler;->resume()V

    .line 499
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAccelerometerEnabler:Lcom/android/settings/display/AccelerometerEnabler;

    invoke-virtual {v0}, Lcom/android/settings/display/AccelerometerEnabler;->resume()V

    .line 500
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mGpsEnabler:Lcom/android/settings/GpsEnabler;

    invoke-virtual {v0}, Lcom/android/settings/GpsEnabler;->resume()V

    .line 501
    return-void
.end method
