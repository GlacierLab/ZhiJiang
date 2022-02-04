.class final Luk/uuid/slf4j/android/CallerStackTrace;
.super Ljava/lang/Throwable;
.source "CallerStackTrace.java"


# static fields
.field private static final UNKNOWN:Ljava/lang/StackTraceElement;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final stackFrame:Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/lang/StackTraceElement;

    const-string v1, "<unknown class>"

    const-string v2, "<unknown method>"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Luk/uuid/slf4j/android/CallerStackTrace;->UNKNOWN:Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    :try_start_3
    invoke-virtual {p0}, Luk/uuid/slf4j/android/CallerStackTrace;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object p1, v0, p1
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    sget-object p1, Luk/uuid/slf4j/android/CallerStackTrace;->UNKNOWN:Ljava/lang/StackTraceElement;

    :goto_c
    iput-object p1, p0, Luk/uuid/slf4j/android/CallerStackTrace;->stackFrame:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/StackTraceElement;
    .registers 2

    iget-object v0, p0, Luk/uuid/slf4j/android/CallerStackTrace;->stackFrame:Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Luk/uuid/slf4j/android/CallerStackTrace;->stackFrame:Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
