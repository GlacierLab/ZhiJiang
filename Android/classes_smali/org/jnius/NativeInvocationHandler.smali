.class public Lorg/jnius/NativeInvocationHandler;
.super Ljava/lang/Object;
.source "NativeInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field static DEBUG:Z


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/jnius/NativeInvocationHandler;->ptr:J

    return-void
.end method


# virtual methods
.method public getPythonObjectPointer()J
    .registers 3

    iget-wide v0, p0, Lorg/jnius/NativeInvocationHandler;->ptr:J

    return-wide v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-boolean v0, Lorg/jnius/NativeInvocationHandler;->DEBUG:Z

    if-eqz v0, :cond_28

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+ java:invoke(<proxy>, "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    :cond_28
    invoke-virtual {p0, p1, p2, p3}, Lorg/jnius/NativeInvocationHandler;->invoke0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-boolean p2, Lorg/jnius/NativeInvocationHandler;->DEBUG:Z

    if-eqz p2, :cond_3c

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "+ java:invoke returned: "

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_3c
    return-object p1
.end method

.method native invoke0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
