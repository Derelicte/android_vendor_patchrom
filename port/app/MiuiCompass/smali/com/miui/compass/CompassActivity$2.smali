.class Lcom/miui/compass/CompassActivity$2;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/CompassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$2;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 331
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 325
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, -0x4080

    mul-float v0, v1, v2

    .line 326
    .local v0, direction:F
    iget-object v1, p0, Lcom/miui/compass/CompassActivity$2;->this$0:Lcom/miui/compass/CompassActivity;

    iget-object v2, p0, Lcom/miui/compass/CompassActivity$2;->this$0:Lcom/miui/compass/CompassActivity;

    #calls: Lcom/miui/compass/CompassActivity;->normalizeDegree(F)F
    invoke-static {v2, v0}, Lcom/miui/compass/CompassActivity;->access$400(Lcom/miui/compass/CompassActivity;F)F

    move-result v2

    #setter for: Lcom/miui/compass/CompassActivity;->mTargetDirection:F
    invoke-static {v1, v2}, Lcom/miui/compass/CompassActivity;->access$202(Lcom/miui/compass/CompassActivity;F)F

    .line 327
    return-void
.end method
