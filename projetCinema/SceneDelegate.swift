//
//  SceneDelegate.swift
//  tpMovie
//
//  Created by vanhouta on 18/05/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Permet de connecter la fenêtre UIWindow et la scène UIWindowScene.
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Cette fonction est utilisée lorsque la scène passe en arrière plan ou lorsque l'application est fermée.
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Cette fonction permet de relancer les scènes qui ont été mises en "pause"
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Fonction utilisé lorsque par exemple un appel vient interrompre le processus de l'application
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Annule les modifications apportées lors du passage à l'arrière-plan.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Cette fonction permet de sauvegarder les données lorsque la scène entre en arrière plan.
    }


}

