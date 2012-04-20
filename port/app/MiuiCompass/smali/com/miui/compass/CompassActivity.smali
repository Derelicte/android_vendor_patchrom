.class public Lcom/miui/compass/CompassActivity;
.super Landroid/app/Activity;
.source "CompassActivity.java"


# instance fields
.field private final MAX_ROATE_DEGREE:F

.field mAngleLayout:Landroid/widget/LinearLayout;

.field private mChinease:Z

.field mCompassView:Landroid/view/View;

.field protected mCompassViewUpdater:Ljava/lang/Runnable;

.field private mDirection:F

.field mDirectionLayout:Landroid/widget/LinearLayout;

.field protected final mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationProvider:Ljava/lang/String;

.field mLocationTextView:Landroid/widget/TextView;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field mPointer:Lcom/miui/compass/CompassView;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStopDrawing:Z

.field private mTargetDirection:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/miui/compass/CompassActivity;->MAX_ROATE_DEGREE:F

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/miui/compass/CompassActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassActivity$1;-><init>(Lcom/miui/compass/CompassActivity;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassViewUpdater:Ljava/lang/Runnable;

    .line 321
    new-instance v0, Lcom/miui/compass/CompassActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassActivity$2;-><init>(Lcom/miui/compass/CompassActivity;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 338
    new-instance v0, Lcom/miui/compass/CompassActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassActivity$3;-><init>(Lcom/miui/compass/CompassActivity;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/compass/CompassActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mStopDrawing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/compass/CompassActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/compass/CompassActivity;->mDirection:F

    return v0
.end method

.method static synthetic access$102(Lcom/miui/compass/CompassActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/miui/compass/CompassActivity;->mDirection:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/compass/CompassActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/compass/CompassActivity;->mTargetDirection:F

    return v0
.end method

.method static synthetic access$202(Lcom/miui/compass/CompassActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/miui/compass/CompassActivity;->mTargetDirection:F

    return p1
.end method

.method static synthetic access$300(Lcom/miui/compass/CompassActivity;)Landroid/view/animation/AccelerateInterpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/compass/CompassActivity;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassActivity;->normalizeDegree(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->updateDirection()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/compass/CompassActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/compass/CompassActivity;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/compass/CompassActivity;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method private getLocationString(D)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    const-wide v5, 0x40ac200000000000L

    .line 313
    double-to-int v0, p1

    .line 314
    .local v0, du:I
    int-to-double v3, v0

    sub-double v3, p1, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    div-int/lit8 v1, v3, 0x3c

    .line 315
    .local v1, fen:I
    int-to-double v3, v0

    sub-double v3, p1, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    rem-int/lit8 v2, v3, 0x3c

    .line 316
    .local v2, miao:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getNumberImage(I)Landroid/widget/ImageView;
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, -0x2

    .line 243
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, image:Landroid/widget/ImageView;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 246
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 278
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    return-object v0

    .line 248
    :pswitch_0
    const v2, 0x7f02000e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 251
    :pswitch_1
    const v2, 0x7f02000f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 254
    :pswitch_2
    const v2, 0x7f020010

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 257
    :pswitch_3
    const v2, 0x7f020011

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 260
    :pswitch_4
    const v2, 0x7f020012

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 263
    :pswitch_5
    const v2, 0x7f020013

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 266
    :pswitch_6
    const v2, 0x7f020014

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 269
    :pswitch_7
    const v2, 0x7f020015

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 272
    :pswitch_8
    const v2, 0x7f020016

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 275
    :pswitch_9
    const v2, 0x7f020017

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private initResources()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/miui/compass/CompassActivity;->mDirection:F

    .line 123
    iput v0, p0, Lcom/miui/compass/CompassActivity;->mTargetDirection:F

    .line 124
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mStopDrawing:Z

    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    .line 128
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassView:Landroid/view/View;

    .line 129
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/compass/CompassView;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mPointer:Lcom/miui/compass/CompassView;

    .line 130
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationTextView:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    .line 132
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    .line 134
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mPointer:Lcom/miui/compass/CompassView;

    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020007

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/compass/CompassView;->setImageResource(I)V

    .line 136
    return-void

    .line 134
    :cond_0
    const v0, 0x7f020006

    goto :goto_0
.end method

.method private initServices()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 141
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/miui/compass/CompassActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 142
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 146
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/miui/compass/CompassActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 147
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 148
    .local v0, criteria:Landroid/location/Criteria;
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 149
    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 150
    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 151
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 152
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 153
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    .line 155
    return-void
.end method

.method private normalizeDegree(F)F
    .locals 2
    .parameter "degree"

    .prologue
    .line 335
    const/high16 v0, 0x4434

    add-float/2addr v0, p1

    const/high16 v1, 0x43b4

    rem-float/2addr v0, v1

    return v0
.end method

.method private updateDirection()V
    .locals 13

    .prologue
    const/4 v9, -0x2

    .line 158
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 161
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 162
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 164
    const/4 v3, 0x0

    .line 165
    .local v3, east:Landroid/widget/ImageView;
    const/4 v8, 0x0

    .line 166
    .local v8, west:Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 167
    .local v7, south:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 168
    .local v5, north:Landroid/widget/ImageView;
    iget v9, p0, Lcom/miui/compass/CompassActivity;->mTargetDirection:F

    const/high16 v10, -0x4080

    mul-float/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/miui/compass/CompassActivity;->normalizeDegree(F)F

    move-result v1

    .line 169
    .local v1, direction:F
    const/high16 v9, 0x41b4

    cmpl-float v9, v1, v9

    if-lez v9, :cond_a

    const v9, 0x431d8000

    cmpg-float v9, v1, v9

    if-gez v9, :cond_a

    .line 171
    new-instance v3, Landroid/widget/ImageView;

    .end local v3           #east:Landroid/widget/ImageView;
    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    .restart local v3       #east:Landroid/widget/ImageView;
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_9

    const v9, 0x7f02000a

    :goto_0
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :cond_0
    :goto_1
    const/high16 v9, 0x42e1

    cmpl-float v9, v1, v9

    if-lez v9, :cond_d

    const v9, 0x43778000

    cmpg-float v9, v1, v9

    if-gez v9, :cond_d

    .line 183
    new-instance v7, Landroid/widget/ImageView;

    .end local v7           #south:Landroid/widget/ImageView;
    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 184
    .restart local v7       #south:Landroid/widget/ImageView;
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_c

    const v9, 0x7f02001a

    :goto_2
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    :cond_1
    :goto_3
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_10

    .line 195
    if-eqz v3, :cond_2

    .line 196
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    :cond_2
    if-eqz v8, :cond_3

    .line 199
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    :cond_3
    if-eqz v7, :cond_4

    .line 202
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    :cond_4
    if-eqz v5, :cond_5

    .line 205
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    :cond_5
    :goto_4
    float-to-int v2, v1

    .line 224
    .local v2, direction2:I
    const/4 v6, 0x0

    .line 225
    .local v6, show:Z
    const/16 v9, 0x64

    if-lt v2, v9, :cond_6

    .line 226
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    div-int/lit8 v10, v2, 0x64

    invoke-direct {p0, v10}, Lcom/miui/compass/CompassActivity;->getNumberImage(I)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    rem-int/lit8 v2, v2, 0x64

    .line 228
    const/4 v6, 0x1

    .line 230
    :cond_6
    const/16 v9, 0xa

    if-ge v2, v9, :cond_7

    if-eqz v6, :cond_8

    .line 231
    :cond_7
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    div-int/lit8 v10, v2, 0xa

    invoke-direct {p0, v10}, Lcom/miui/compass/CompassActivity;->getNumberImage(I)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    rem-int/lit8 v2, v2, 0xa

    .line 234
    :cond_8
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/miui/compass/CompassActivity;->getNumberImage(I)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 236
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, degreeImageView:Landroid/widget/ImageView;
    const v9, 0x7f020008

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mAngleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    return-void

    .line 172
    .end local v0           #degreeImageView:Landroid/widget/ImageView;
    .end local v2           #direction2:I
    .end local v6           #show:Z
    :cond_9
    const v9, 0x7f020009

    goto/16 :goto_0

    .line 174
    :cond_a
    const v9, 0x434a8000

    cmpl-float v9, v1, v9

    if-lez v9, :cond_0

    const v9, 0x43a8c000

    cmpg-float v9, v1, v9

    if-gez v9, :cond_0

    .line 176
    new-instance v8, Landroid/widget/ImageView;

    .end local v8           #west:Landroid/widget/ImageView;
    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 177
    .restart local v8       #west:Landroid/widget/ImageView;
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_b

    const v9, 0x7f02001c

    :goto_5
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 177
    :cond_b
    const v9, 0x7f02001b

    goto :goto_5

    .line 184
    :cond_c
    const v9, 0x7f020019

    goto/16 :goto_2

    .line 186
    :cond_d
    float-to-double v9, v1

    const-wide v11, 0x4050e00000000000L

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_e

    const v9, 0x43924000

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1

    .line 188
    :cond_e
    new-instance v5, Landroid/widget/ImageView;

    .end local v5           #north:Landroid/widget/ImageView;
    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 189
    .restart local v5       #north:Landroid/widget/ImageView;
    iget-boolean v9, p0, Lcom/miui/compass/CompassActivity;->mChinease:Z

    if-eqz v9, :cond_f

    const v9, 0x7f02000d

    :goto_6
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 189
    :cond_f
    const v9, 0x7f02000c

    goto :goto_6

    .line 209
    :cond_10
    if-eqz v7, :cond_11

    .line 210
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    :cond_11
    if-eqz v5, :cond_12

    .line 213
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    :cond_12
    if-eqz v3, :cond_13

    .line 216
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    :cond_13
    if-eqz v8, :cond_5

    .line 219
    iget-object v9, p0, Lcom/miui/compass/CompassActivity;->mDirectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 10
    .parameter "location"

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    iget-object v5, p0, Lcom/miui/compass/CompassActivity;->mLocationTextView:Landroid/widget/TextView;

    const v6, 0x7f040001

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 310
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 288
    .local v0, latitude:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 290
    .local v2, longitude:D
    const-wide/16 v5, 0x0

    cmpl-double v5, v0, v5

    if-ltz v5, :cond_1

    .line 291
    const v5, 0x7f040003

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/compass/CompassActivity;->getLocationString(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :goto_1
    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-wide/16 v5, 0x0

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_2

    .line 301
    const v5, 0x7f040005

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v2, v3}, Lcom/miui/compass/CompassActivity;->getLocationString(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :goto_2
    iget-object v5, p0, Lcom/miui/compass/CompassActivity;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_1
    const v5, 0x7f040004

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/high16 v8, -0x4010

    mul-double/2addr v8, v0

    invoke-direct {p0, v8, v9}, Lcom/miui/compass/CompassActivity;->getLocationString(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 304
    :cond_2
    const v5, 0x7f040006

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/high16 v8, -0x4010

    mul-double/2addr v8, v2

    invoke-direct {p0, v8, v9}, Lcom/miui/compass/CompassActivity;->getLocationString(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/compass/CompassActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->initResources()V

    .line 87
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->initServices()V

    .line 88
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mStopDrawing:Z

    .line 113
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 119
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/compass/CompassActivity;->updateLocation(Landroid/location/Location;)V

    .line 96
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationProvider:Ljava/lang/String;

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/miui/compass/CompassActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mStopDrawing:Z

    .line 106
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mCompassViewUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationTextView:Landroid/widget/TextView;

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
